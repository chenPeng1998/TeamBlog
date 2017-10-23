package serviceImp;

import pojoc.Student;
import service.RegService;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "Servlet")
public class RegServ extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        Student student=new Student(request.getParameter("username"),request.getParameter("password"));
        RegService regService=new RegService();
        boolean key=regService.checkUsername(student.getUsername());
        if(key){
            System.out.println("reg");
            regService.regUser(student);
            response.sendRedirect("lo.jsp");
        }else {
            System.out.println("no reg");
            response.sendRedirect("reg.jsp");
        }
    }


    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
       doPost(request,response);
    }
}
