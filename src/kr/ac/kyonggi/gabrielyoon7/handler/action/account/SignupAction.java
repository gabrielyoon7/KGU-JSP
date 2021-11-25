package kr.ac.kyonggi.gabrielyoon7.handler.action.account;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.HomeDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Gson gson = new Gson();
        request.setAttribute("majorList",gson.toJson(HomeDAO.getInstance().getMajorList()));
        request.setAttribute("jsp", gson.toJson("signup"));
        return "page/page.jsp";
    }
}
