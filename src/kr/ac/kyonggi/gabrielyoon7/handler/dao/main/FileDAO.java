package kr.ac.kyonggi.gabrielyoon7.handler.dao.main;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import kr.ac.kyonggi.gabrielyoon7.common.sql.Config;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.main.UploadedFileDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class FileDAO {

    public static FileDAO it;

    public static FileDAO getInstance() { //인스턴스 생성
        if (it == null)
            it = new FileDAO();
        return it;
    }


    public String insertFileUploadLog(String parameter) {
//        System.out.println(parameter);
        String arr[]=parameter.split("-/-/-"); // String parameter = id+"-/-/-"+uploadFile+"-/-/-"+newFileName+"-/-/-"+upload_time+"-/-/-"+savePath+"-/-/-"+folder;
        String user_id = arr[0];
        String uploadFile = arr[1];
        String newFileName = arr[2];
        String upload_time = arr[3];
        String savePath = arr[4];
        String folder = arr[5];

        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.query(conn, "INSERT `uploaded_file` SET user_id=?, uploadFile=?, newFileName=?, upload_time=?, savePath=?, folder=?", new MapListHandler(),
                    user_id, uploadFile, newFileName, upload_time, savePath, folder);
            listOfMaps = queryRunner.query(conn, "SELECT * FROM `uploaded_file` WHERE user_id=? AND newFileName=?", new MapListHandler(),
                    user_id, newFileName);
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<UploadedFileDTO> result = null;
        result = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<UploadedFileDTO>>() {
        }.getType());
        if(result.size()>0) {
            return result.get(0).getId();
        }
        else {
            return null;
        }


    }

    public UploadedFileDTO getFile(String id) {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM uploaded_file WHERE id=?", new MapListHandler(), id);
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<UploadedFileDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<UploadedFileDTO>>() {}.getType());
        if(selectedList.size() > 0)
            return selectedList.get(0);
        else
            return null;
    }

    public void deleteFileWithName(String newFileName) {
        Connection conn=Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn, "DELETE FROM uploaded_file WHERE newFileName=?;", newFileName);
        }
        catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
    }

    public ArrayList<UploadedFileDTO> getFiles(String folder) {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn,"SELECT * FROM uploaded_file WHERE folder=? AND uploaded=? ORDER BY id DESC;", new MapListHandler(), folder, "false");
            queryRunner.update(conn, "UPDATE uploaded_file SET `uploaded`=? WHERE `folder` = ? AND uploaded=?;", "true", folder, "false");
//            System.out.println(listOfMaps);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<UploadedFileDTO> selected = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<UploadedFileDTO>>() {}.getType());
//        System.out.println(selected);
        return selected;
    }

    public String deleteNotUploadedFile(String data) {
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn, "DELETE FROM uploaded_file WHERE folder=? AND uploaded=?", data, "false");
        } catch (SQLException se) {
            se.printStackTrace();
            return "fail";
        } finally {
            DbUtils.closeQuietly(conn);
        }
        return "success";
    }
}
