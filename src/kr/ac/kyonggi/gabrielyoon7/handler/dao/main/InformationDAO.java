package kr.ac.kyonggi.gabrielyoon7.handler.dao.main;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import kr.ac.kyonggi.gabrielyoon7.common.controller.CommonAction;
import kr.ac.kyonggi.gabrielyoon7.common.sql.Config;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.main.InformationDTO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.main.SliderDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class InformationDAO {
    public static InformationDAO it;

    public static InformationDAO getInstance(){
        if(it==null)
            it = new InformationDAO();
        return it;
    }

    public InformationDTO getInformation(String major, String num) {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM information WHERE major =? AND id = ?", new MapListHandler(), major, num);
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<InformationDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<InformationDTO>>() {}.getType());
        if(selectedList.size()==0){
            return null;
        }
        return selectedList.get(0);
    }

    public String modifyText(String data) {
//        System.out.println(data);
        String arr[]=data.split("-/-/-");// information.id+"-/-/-"+information.major+"-/-/-"+description;
        String id=arr[0];
        String major=arr[1];
        String description=arr[2];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"UPDATE information SET description=? WHERE id=? AND major=?;",description,id, major);
        } catch (SQLException se) {
            se.printStackTrace();
            return "fail";
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }

    public void initiateInformation(String major, String num) {
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"INSERT INTO information(id,major,description) VALUE(?,?,'"+num+major+"기본 데이터')", num, major);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
    }
}
