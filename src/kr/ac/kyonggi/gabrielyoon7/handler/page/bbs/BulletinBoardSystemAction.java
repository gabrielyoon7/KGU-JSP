package kr.ac.kyonggi.gabrielyoon7.handler.page.bbs;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BulletinBoardSystemAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Gson gson = new Gson();
        String mode = (String) request.getParameter("mode");
        if(mode==null){
            mode="list";
        }



        if(mode.equals("list")){
            request.setAttribute("jsp", gson.toJson("bbs-list"));
        }
        else if (mode.equals("read")){
            request.setAttribute("jsp", gson.toJson("bbs-read"));
        }
        else {
            return "main/error.jsp";
        }
        return "page/page.jsp";
    }
}
