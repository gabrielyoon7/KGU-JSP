package kr.ac.kyonggi.gabrielyoon7.handler.dao.user;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import kr.ac.kyonggi.gabrielyoon7.common.sql.Config;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.user.UserDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class UserDAO {
    public static UserDAO it;

    public static UserDAO getInstance(){
        if(it==null)
            it = new UserDAO();
        return it;
    }

    public UserDTO getType(String type){
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            String sql = "SELECT * FROM usertype where type_name = '" + type + "';";
            listOfMaps = queryRunner.query(conn, sql, new MapListHandler());
        } catch(Exception se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }

        try {
            Gson gson = new Gson();
            ArrayList<UserDTO> selected = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<UserDTO>>() {}.getType());
            if(selected.size() > 0) {
                return selected.get(0);
            }
            else
                return null;
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }

    public UserDTO getGoogleUser(String google_id){
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn,"SELECT * FROM user WHERE google_id = ?;", new MapListHandler(), google_id);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<UserDTO> selected = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<UserDTO>>() {}.getType());
        if(selected.size()>0) {
            return selected.get(0);
        }
        else
            return null;
    }

    public void addUser(String text) {
//        System.out.println(text);
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,text);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
    }


}
