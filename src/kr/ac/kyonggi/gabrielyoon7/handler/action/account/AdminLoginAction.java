package kr.ac.kyonggi.gabrielyoon7.handler.action.account;

import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession(); //Session에 있는 정보로 뭔가 해야할 때 사용
        String id = request.getParameter("id");
        String password = request.getParameter("password");
//        System.out.println(id + password);
        if(id.equals("admin") && password.equals("admin1234")){
            String managerInfo = "{\"oid\":\"0\",\"google_id\":\"manager\",\"google_email\":\"manager@kyonggi.ac.kr\",\"google_image_url\":\"#\",\"google_name\":\"manager\",\"name\":\"홈페이지관리자\",\"birthday\":\"11월 28, 2021\",\"gender\":\"남\",\"phone\":\"010-0000-0000\",\"type\":\"관리자\",\"major\":\"main\"}";
            session.setAttribute("user", managerInfo);
            response.sendRedirect("/main.kgu");
            return "" ;
        }
        else {
            return "main/error.jsp";
        }

    }
}
