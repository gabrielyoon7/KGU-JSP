package kr.ac.kyonggi.gabrielyoon7.handler.action.main;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.HomeDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction implements Action {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Gson gson = new Gson();
        request.setAttribute("slider", gson.toJson(HomeDAO.getInstance().getSlider()));
        request.setAttribute("majorList",gson.toJson(HomeDAO.getInstance().getMajorList()));
//        request.setAttribute("bannerList",gson.toJson(HomeDAO.getInstance().getBannerList()));
        return "main/main.jsp";
    }
}
