package kr.ac.kyonggi.gabrielyoon7.handler.action.account;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
import kr.ac.kyonggi.gabrielyoon7.common.controller.LoginManager;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.user.UserDAO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.user.UserDTO;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class GoogleLoginAction implements Action {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Gson gson = new Gson();
        HttpSession session = request.getSession(); //Session에 있는 정보로 뭔가 해야할 때 사용

        BufferedReader in = null;
        InputStream is = null;
        InputStreamReader isr = null;
        JSONParser jsonParser = new JSONParser();

        String userId = null;

        try {
            String idToken = request.getParameter("idtoken");
            String url = "https://oauth2.googleapis.com/tokeninfo";
            url += "?id_token=" + idToken;

            URL gUrl = new URL(url);
            HttpURLConnection conn = (HttpURLConnection) gUrl.openConnection();

            is = conn.getInputStream();
            isr = new InputStreamReader(is, "UTF-8");
            in = new BufferedReader(isr);


            JSONObject jsonObj = (JSONObject) jsonParser.parse(in);

            userId = jsonObj.get("sub").toString();
            String name = jsonObj.get("name").toString();
            String email = jsonObj.get("email").toString();
            String imageUrl = jsonObj.get("picture").toString();

            System.out.println(userId);
            System.out.println(name);
            System.out.println(email);
            System.out.println(imageUrl);


            LoginManager manager = LoginManager.getInstance();
            UserDAO dao = UserDAO.getInstance();
            UserDTO it = dao.getGoogleUser(userId); //id에 따른 유저 정보를 일단 받아옴. (아이디가 일치하지 않으면 null을 갖게됨)

            if (it != null) { //조회한 id가 존재한다면
//                System.out.println("구글 id가 db에 있음.");
                if (manager.isUsing(it.google_id)) { //접속중이라면
                    manager.removeSession(it.google_id); //접속중인 세션 제거
                }
//                    System.out.println("로그인 성공");
                manager.setSession(request.getSession(), it.google_id); //세션 설정하기
                UserDTO type = dao.getType(it.type);
                session.setAttribute("user", gson.toJson(it));
                session.setAttribute("type", gson.toJson(type));
                return "success";

            } else {
//                System.out.println("구글 아이디는 존재하나, 서버 DB에 회원 정보가 없음. 회원가입으로 이동");
                session.setAttribute("google_id", userId);
                session.setAttribute("google_name", name);
                session.setAttribute("google_email", email);
                session.setAttribute("google_imageUrl", imageUrl);
                return "register";
            }
        } catch (Exception e) {
            System.out.println("로그인 실패. 존재하지 않는 구글 아이디 혹은 잘못된 토큰 요청.");
            System.out.println(e);
            return "failure";
        }


    }
}
