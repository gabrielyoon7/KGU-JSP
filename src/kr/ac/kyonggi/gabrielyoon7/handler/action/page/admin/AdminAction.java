package kr.ac.kyonggi.gabrielyoon7.handler.action.page.admin;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.CommonAction;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.HomeDAO;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.user.UserDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminAction extends CommonAction {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
        HttpSession session = request.getSession();

        Gson gson = new Gson();
        String num= request.getParameter("num"); //현재 페이지의 num을 전달받음
        String type =  (String)session.getAttribute("type");
        if(!type.equals("관리자")){
            return "main/error.jsp";
        }

        if(num.equals("90")){
            request.setAttribute("jsp", gson.toJson("admin_main"));
        }
        else if (num.equals("91")){
            request.setAttribute("jsp", gson.toJson("admin_major"));
        }
        else if (num.equals("92")){
            return "main/sorry.jsp";
        }
        else if (num.equals("93")){
            request.setAttribute("slideList", gson.toJson(HomeDAO.getInstance().getSlider()));
            request.setAttribute("jsp", gson.toJson("admin_slider"));
        }
        else {
            return "main/error.jsp";
        }
        return "page/page.jsp";
    }
}
