//package kr.ac.kyonggi.gabrielyoon7.handler.action.main;
//
//import com.google.gson.Gson;
//import com.google.gson.GsonBuilder;
//import com.google.gson.JsonArray;
//import com.google.gson.JsonObject;
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.File;
//import java.io.FileInputStream;
//import java.io.FileOutputStream;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
//public class UploadAction implements Action {
//
//    @Override
//    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        Gson gson = new Gson();
//        //30MB 제한
//        int maxSize  = 1024*1024*30;
//
//        // 웹서버 컨테이너 경로
//        String folder = request.getParameter("folder");
//        String path = request.getSession().getServletContext().getRealPath(folder);
//
//        //폴더가 없다면 생성
//        File dircheck = new File(path);
//        if(!dircheck.exists()) {
//            dircheck.mkdirs();
//        }
//
//        // 파일 저장 경로(ex : /home/tour/web/ROOT/upload)
//        String savePath = path;
//
//        // 업로드 파일명
//        String uploadFile = "";
//
//        // 실제 저장할 파일명
//        String newFileName = "";
//
//        int read = 0;
//        byte[] buf = new byte[1024];
//        FileInputStream fin = null;
//        FileOutputStream fout = null;
//        long currentTime = System.currentTimeMillis();
//        SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");
//
//        try{
//            MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
//            uploadFile = multi.getFilesystemName("file_data");
//
//            /**
//             * 파일 타입 검사 (웹 브라우저에서도 제약을 걸지만, 부정한 방법으로 업로드를 시도하는 경우가 있을 수도 있어 자바에서 이중 검사)
//             * */
//            String check = uploadFile.substring(uploadFile.lastIndexOf(".")+1,uploadFile.length());
//            check = check.toLowerCase();
//            String fileType = multi.getParameter("file_type"); //파일 타입 검사용
//            switch (fileType){
//                case "image":
//                    if(!check.equals("jpg") && !check.equals("jpeg") && !check.equals("png") && !check.equals("gif") && !check.equals("bmp")){
//                        return null;
//                    }
//                    break;
//                case "doc":
//                    if(!check.equals("hwp") && !check.equals("hwpx") && !check.equals("doc") && !check.equals("docx") && !check.equals("pdf") && !check.equals("txt") && !check.equals("html")){
//                        return null;
//                    }
//                    break;
//                case "music":
//                    if(!check.equals("mp3") && !check.equals("wma") && !check.equals("wav")){
//                        return null;
//                    }
//                    break;
//                case "video":
//                    if(!check.equals("avi") && !check.equals("flv") && !check.equals("mkv") && !check.equals("mp4") && !check.equals("mov")){
//                        return null;
//                    }
//                    break;
//                default:
//                    break;
//            }
//
//            /**
//             * 위의 검사들을 다 통과하면 파일을 업로드해줌.
//             * */
//
//            newFileName = simDf.format(new Date(currentTime)) + "_" + uploadFile;
//            // 업로드된 파일 객체 생성
//            File oldFile = new File(savePath, uploadFile);
//
//            // 실제 저장될 파일 객체 생성
//            File newFile = new File(savePath, newFileName);
//
//            // 파일명 rename
//            if(!oldFile.renameTo(newFile)){
//
//                // rename이 되지 않을경우 강제로 파일을 복사하고 기존파일은 삭제
//                buf = new byte[1024];
//                fin = new FileInputStream(oldFile);
//                fout = new FileOutputStream(newFile);
//                read = 0;
//                while((read=fin.read(buf,0,buf.length))!=-1){
//                    fout.write(buf, 0, read);
//                }
//
//                fin.close();
//                fout.close();
//                oldFile.delete();
//            }
//
//            UserDTO user = gson.fromJson((String) request.getSession().getAttribute("user"), UserDTO.class);
//            String user_id= user.id;
//
//            String upload_time = simDf.format(new Date(currentTime));
//            String parameter = user_id+"-/-/-"+uploadFile+"-/-/-"+newFileName+"-/-/-"+upload_time+"-/-/-"+savePath+"-/-/-"+folder;
//            String file_id = FileDAO.getInstance().insertFileUploadLog(parameter); //업로드 파일 로그 남기면서 돌려받을 고유 번호
//            String upload_mode = multi.getParameter("upload_mode");
////            System.out.println(upload_mode);
//            if(upload_mode==null){
//                upload_mode="common";
//            }
//
//            if(!upload_mode.equals("bbs")){
////                System.out.println("it's not bbs");
//                return file_id+"-/-/-"+newFileName;
//            }
//            else {
////                FileDAO.getInstance().updateFileUploadLog();
//                JsonObject forFinish = new JsonObject();
//                JsonArray forArray = new JsonArray();
//                JsonObject intoArray = new JsonObject();
//                intoArray.addProperty("url", "delete.kgu?folder="+folder);
//                JsonObject forIntoArray = new JsonObject();
//                forIntoArray.addProperty("fileId", file_id);
//                intoArray.addProperty("fileId", file_id);
//                intoArray.add("extra", forIntoArray);
//                intoArray.addProperty("caption", uploadFile);
//                intoArray.addProperty("description", "창 닫기가 안된다면 모달의 바깥부분을 클릭하십시오.");
//                forArray.add(intoArray);
//                forFinish.add("initialPreviewConfig", forArray);
//                JsonArray forArray2 = new JsonArray();
////                forArray2.add("<img src=\""+folder+'/'+newFileName+"\" class=\"kv-preview-data file-preview-image file-zoom-detail\">");
//                forFinish.add("initialPreview", forArray2);
////                forFinish.addProperty("previewZoom", "<img src=\""+folder+'/'+newFileName+"\" class=\"kv-preview-data file-preview-image file-zoom-detail\">"); // 상세보기를 누르면 나올 이미지
//                Gson gson2 = new GsonBuilder().disableHtmlEscaping().create();
//                return gson2.toJson(forFinish);
//            }
//
//        }catch(Exception e){
//            e.printStackTrace();
//            return "fail";
//        }
//    }
//}
