package serviceImp;


import pojoc.Student;
import service.LoginService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Servlet")
public class LoginServ extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        LoginService loginService=new LoginService();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Student student=new Student();
        student.setUsername(username);
        student.setPassword(password);

        boolean key=loginService.login(student);
        if(key){
            System.out.println("登陆成功");
            HttpSession session=request.getSession();
            session.setAttribute("student",student);
            response.sendRedirect("safad.jsp");

        }else {
            System.out.println("登陆失败");
            request.setAttribute("check","账号/密码错误!");
            request.getRequestDispatcher("lo.jsp").forward(request,response);
        }
    }


    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
         System.out.println("safsdf");
    }
}
