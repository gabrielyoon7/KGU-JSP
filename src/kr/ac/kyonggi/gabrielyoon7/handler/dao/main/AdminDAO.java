package kr.ac.kyonggi.gabrielyoon7.handler.dao.main;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import kr.ac.kyonggi.gabrielyoon7.common.sql.Config;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.main.SliderDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class AdminDAO {
    public static AdminDAO it;

    public static AdminDAO getInstance(){
        if(it==null)
            it = new AdminDAO();
        return it;
    }
    public String deleteSlider(String data) {

        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"DELETE FROM slider WHERE id=?", data);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }
    public String addSlider(String data) {
        String arr[] = data.split("-/-/-"); // slider_img
        String slider_img = arr[0];
        String major = arr[1];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"INSERT INTO slider(slider_img,slider_major) VALUE(?,?);", slider_img,major);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }

    public String addMajor(String data) {
        String arr[] = data.split("-/-/-"); // slider_img
        String code = arr[0];
        String major = arr[1];
        String color = arr[2];
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,"INSERT INTO major(code, major, color) VALUE(?,?,?);", code,major,color);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }

    public String deleteMajor(String data) {
        Connection conn = Config.getInstance().sqlLogin();
        try {
            if(data!="1"){
                QueryRunner queryRunner = new QueryRunner();
                queryRunner.update(conn,"DELETE FROM major WHERE oid=?", data);
            }
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }
}
