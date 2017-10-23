<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/23
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Title</title>
</head>
<body>
<%
    HttpSession reque= request.getSession();
     out.println(reque.getAttribute("student"));
     if(reque.getAttribute("student")!=null){
         out.println("登陆成功 欢迎");
     }else {
         out.println("没有登陆 ");
         response.sendRedirect("lo.jsp");
     }
%>
</body>
</html>
