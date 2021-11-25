package kr.ac.kyonggi.gabrielyoon7.handler.action.account;

import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action{

    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("/");
        return null;
    }
}