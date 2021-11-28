package kr.ac.kyonggi.gabrielyoon7.handler.action;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.common.controller.Action;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.InformationDAO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.user.UserDTO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.user.UserTypeDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AjaxAction implements Action {
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Gson gson = new Gson();
        String req = request.getParameter("req"); //JSP에서 넘겨준 req
        HttpSession session = request.getSession(); //Session에 있는 정보로 뭔가 해야할 때 사용
        String data = request.getParameter("data"); //JSP에서 넘겨준 data
//        UserDTO user = gson.fromJson((String) session.getAttribute("user"), UserDTO.class);
//        UserTypeDTO type = gson.fromJson((String) session.getAttribute("type"), UserTypeDTO.class);
        String result = null;
        String address = null;
        String num = request.getParameter("num");
        switch (req) {
            case "modifyText":
                result = InformationDAO.getInstance().modifyText(data);
                break;
        }
//        System.out.println(result);
        return result;
    }
}
