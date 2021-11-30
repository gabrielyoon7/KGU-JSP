package kr.ac.kyonggi.gabrielyoon7.common.controller;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.HomeDAO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.user.UserDTO;
import kr.ac.kyonggi.gabrielyoon7.handler.dto.user.UserTypeDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CommonAction implements Action{
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Gson gson = new Gson();
        HttpSession session = request.getSession(true);
        String num= request.getParameter("num"); //현재 페이지의 num을 전달받음
        if(num==null){
            num="0";
        }
        request.setAttribute("num", gson.toJson(num));
        /**
         * 다음 설정은 JSP의 taglib에서 Java -> JSON으로 바로 접근이 가능하게 처리해줍니다.
         * 예를들어 Java에서 type.for_header라고 하는 경우 JSON의 for_header의 키값으로 인식하여 바로 즉시 접근이 가능하게 도와줍니다.
         * */
        String user = (String) request.getSession().getAttribute("user");
        request.setAttribute("user",gson.fromJson(user, UserDTO.class));
//        System.out.println(user);
//        String type = (String) request.getSession().getAttribute("type");
//        request.setAttribute("type",gson.fromJson(type, UserTypeDTO.class));
        /**
         * major 정보가 없는 경우에는 무조건 main으로 고정됩니다.
         * */
        String major= request.getParameter("major"); //현재 major를 전달받음
        if(major==null){ //major 변수가 비어있는 경우에는 학부 홈페이지로 보내줄 수 있도록 처리함. (오류방지)
            major="main";
        }
        if(HomeDAO.getInstance().getMajor(major)==null){
            major="main";
        }
        request.setAttribute("major", gson.toJson(major));
        request.setAttribute("majorInfo", gson.toJson(HomeDAO.getInstance().getMajor(major))); //전공 별 홈페이지 설정에 관여
        request.setAttribute("majorAllInfo", gson.toJson(HomeDAO.getInstance().getAllMajor())); //다른 홈페이지로 바로갈 수 있도록 하는 설정에 관여
//        request.setAttribute("majorList",gson.toJson(HomeDAO.getInstance().getMajorList()));
        return null;
    }
}
