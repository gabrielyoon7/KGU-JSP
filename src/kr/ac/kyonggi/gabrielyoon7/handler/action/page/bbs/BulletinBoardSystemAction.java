package kr.ac.kyonggi.gabrielyoon7.handler.action.page.bbs;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
import kr.ac.kyonggi.gabrielyoon7.common.controller.CommonAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BulletinBoardSystemAction  extends CommonAction {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.execute(request,response);
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
