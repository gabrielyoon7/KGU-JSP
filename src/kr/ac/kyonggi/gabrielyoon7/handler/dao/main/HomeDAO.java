package kr.ac.kyonggi.gabrielyoon7.handler.dao.main;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import kr.ac.kyonggi.gabrielyoon7.common.sql.Config;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.user.UserDAO;
//import kr.ac.kyonggi.gabrielyoon7.handler.dto.main.BannerDTO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.main.MajorDTO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.main.SliderDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class HomeDAO {
    public static HomeDAO it;

    public static HomeDAO getInstance(){
        if(it==null)
            it = new HomeDAO();
        return it;
    }

    public ArrayList<SliderDTO> getSlider() {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM slider ORDER BY id DESC", new MapListHandler());
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<SliderDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<SliderDTO>>() {}.getType());
        return selectedList;
    }

//    public ArrayList<BannerDTO> getBannerList() {
//        List<Map<String, Object>> listOfMaps = null;
//        Connection conn = Config.getInstance().sqlLogin();
//        try {
//            QueryRunner queryRunner = new QueryRunner();
//            listOfMaps = queryRunner.query(conn, "SELECT * FROM banner", new MapListHandler());
//        } catch (SQLException se) {
//            se.printStackTrace();
//        } finally {
//            DbUtils.closeQuietly(conn);
//        }
//        Gson gson = new Gson();
//        ArrayList<BannerDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<BannerDTO>>() {}.getType());
//        return selectedList;
//    }

    public ArrayList<MajorDTO> getMajorList() {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM major", new MapListHandler());
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<MajorDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<MajorDTO>>() {}.getType());
        return selectedList;
    }

}
