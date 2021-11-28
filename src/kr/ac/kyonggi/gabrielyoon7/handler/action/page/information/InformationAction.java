package kr.ac.kyonggi.gabrielyoon7.handler.action.page.information;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
import kr.ac.kyonggi.gabrielyoon7.common.controller.CommonAction;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.HomeDAO;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.InformationDAO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.main.InformationDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InformationAction extends CommonAction {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
        Gson gson = new Gson();
        String num= request.getParameter("num"); //현재 페이지의 num을 전달받음
        String major= request.getParameter("major"); //현재 페이지의 major을 전달받음
        InformationDTO information = InformationDAO.getInstance().getInformation(major, num);
        if(information==null){
            InformationDAO.getInstance().initiateInformation(major, num);
            information = InformationDAO.getInstance().getInformation(major, num);
        }
        request.setAttribute("information", gson.toJson(information));
        request.setAttribute("jsp", gson.toJson("information"));
        return "page/page.jsp";
    }
}
