package kr.ac.kyonggi.gabrielyoon7.common.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

public class Controller extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = null;
        Action action = null;
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(getServletContext().getRealPath("/WEB-INF/class.properties"));
        properties.load(fileInputStream);
        fileInputStream.close();
        try{
            Class<?> url = Class.forName(properties.getProperty(request.getRequestURI()));
            action = (Action) url.newInstance();
            try {
                forward = action.execute(request, response); //Action클래스를 실행한 후, 결과값을 forward 변수에 담습니다.
            } catch (Exception e) {
                //세션을 잃어버리면 여기로 보냅니다.
            }
        }catch(ClassNotFoundException ex){
            ex.printStackTrace();
        }catch(InstantiationException ex){
            ex.printStackTrace();
        }catch(IllegalAccessException ex){
            ex.printStackTrace();
        }catch(NullPointerException ex){
            ex.printStackTrace();
        }
        if(forward != null){
            if(forward.contains(".jsp"))
            {
                request.getRequestDispatcher("WEB-INF/" + forward).forward(request, response);
            }
            else {
                PrintWriter pr = response.getWriter();
                pr.print(forward);
                pr.flush();
                pr.close();
            }
        }
    }
}
