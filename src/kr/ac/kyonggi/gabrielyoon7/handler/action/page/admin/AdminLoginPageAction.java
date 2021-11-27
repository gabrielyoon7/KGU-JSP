package kr.ac.kyonggi.gabrielyoon7.handler.action.page.admin;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.CommonAction;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.InformationDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLoginPageAction extends CommonAction {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
        Gson gson = new Gson();
        String num= request.getParameter("num"); //현재 페이지의 num을 전달받음
        String major= request.getParameter("major"); //현재 페이지의 major을 전달받음

        request.setAttribute("jsp", gson.toJson("admin_login_page"));
        return "page/page.jsp";
    }
}
