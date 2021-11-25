package kr.ac.kyonggi.gabrielyoon7.handler.action.main;

import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction implements Action {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        return "main/main.jsp";
    }
}
