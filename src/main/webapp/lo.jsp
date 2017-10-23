<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/23
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<form action="/login" method="post">
    username:<input type="text" name="username"/><span>
    <%=request.getAttribute("check")==null?"":
        request.getAttribute("check")%></span><br/>
    password:<input type="password" name="password"/><br/>
    <button type="submit">login</button>
</form>

</body>
</html>
