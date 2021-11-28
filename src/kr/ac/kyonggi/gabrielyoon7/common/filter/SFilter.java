package kr.ac.kyonggi.gabrielyoon7.common.filter;

import com.google.gson.Gson;
import kr.ac.kyonggi.gabrielyoon7.handler.dao.main.HomeDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class SFilter implements Filter {

    /**
     * 모든 url이 요청될 때 가장 처음으로 실행되는 클래스.
     * 이 클래스가 없으면 UTF-8이 설정되지 않아 한글이 전부 깨짐.
     * 비로그인자에 대한 일부 설정을 돕기도 함.
     * Taglib에서 사용 할 공통 설정을 담당하기도 함.
     * */
    @Override
    public void init(FilterConfig filterConfig) throws ServletException { }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)   throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(true);

        /**
         * 자바 프로젝트가 UTF-8 인코딩으로 동작하게 설정해주는 역할
         * */
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("P3P","CP='CAO PSA CONI OTR OUR DEM ONL'");


        if(session.getAttribute("type") == null) {
            Gson gson = new Gson();
            session.setAttribute("type", "게스트");
            session.setAttribute("menuTabs", gson.toJson(HomeDAO.getInstance().getMenuTabs()));
            session.setAttribute("menuPages", gson.toJson(HomeDAO.getInstance().getMenuPages()));
        }



        chain.doFilter(request, response);
    }

    @Override
    public void destroy() { }
}
