package kr.ac.kyonggi.gabrielyoon7.handler.action.account;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.CommonAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyPageAction extends CommonAction {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
        Gson gson = new Gson();
        request.setAttribute("jsp", gson.toJson("myPage"));
        return "page/page.jsp";
    }
}
