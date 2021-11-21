package kr.ac.kyonggi.gabrielyoon7.handler.page.bbs;

import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BulletinBoardSystemAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String mode = (String) request.getParameter("mode");
        if(mode==null){
            mode="list";
        }



        if(mode.equals("list")){
            return "page/bbs/bbs-list.jsp";
        }
        else if (mode.equals("read")){
            return "page/bbs/bbs-read.jsp";
        }
        else {
            return "main/error.jsp";
        }
    }
}
