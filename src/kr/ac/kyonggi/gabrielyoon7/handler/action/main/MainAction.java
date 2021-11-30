package kr.ac.kyonggi.gabrielyoon7.handler.action.main;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
import kr.ac.kyonggi.gabrielyoon7.common.controller.CommonAction;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.HomeDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction extends CommonAction {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
        Gson gson = new Gson();
        String major = request.getParameter("major");
        if(major==null){
            major="main";
        }
        request.setAttribute("slider", gson.toJson(HomeDAO.getInstance().getMajorSlider(major)));
        request.setAttribute("bannerList",gson.toJson(HomeDAO.getInstance().getBannerList()));
        return "main/main.jsp";
    }
}
