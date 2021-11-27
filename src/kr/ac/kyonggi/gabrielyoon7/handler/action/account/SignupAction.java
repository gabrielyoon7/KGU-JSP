package kr.ac.kyonggi.gabrielyoon7.handler.action.account;

import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.user.UserDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignupAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        String google_id = (String) session.getAttribute("google_id");
        String google_name = (String) session.getAttribute("google_name");
        String google_email = (String) session.getAttribute("google_email");
        String google_imageUrl = (String) session.getAttribute("google_imageUrl");
        String name = request.getParameter("name");
        String univ_id = request.getParameter("univ_id");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String type = request.getParameter("type");
        String major = request.getParameter("major");
        System.out.println("hi");
        String query = "INSERT INTO user(google_id,google_email,google_image_url,google_name,univ_id,name,birthday,gender,phone,type,major) " +
                "VALUE('"+google_id+"','"+google_email+"','"+google_imageUrl+"','"+google_name+"','"+univ_id+"','"+name+"','"+birthday+"','"+gender+"','"+phone+"','"+type+"','"+major+"');";
//        System.out.println(query);
        UserDAO.getInstance().addUser(query);
        response.sendRedirect("/main.kgu");
        return "" ;
    }
}
