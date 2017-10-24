package serviceImp;

import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;

@WebServlet(name = "Servlet")
public class comment extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        System.out.println("service begin");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        String content=request.getParameter("comment");
        out.println("your ideal is "+content);
        System.out.println("service end");
    }


    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        request.setCharacterEncoding("utf-8");
    }
}
