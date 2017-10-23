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
<%
    Map<String,String> map=new HashMap<String ,String>();
    map.put("1","dzh");
    map.put("2","ctp");
    map.put("3","lcz");
    request.setAttribute("map",map);
%>
<head>
    <title>Title</title>
</head>
<body>
<%=request.getAttribute("map")%>
<%
    HashMap<String,String> var=(HashMap<String, String>) request.getAttribute("map");

    out.println("通过Map.entrySet遍历key和value");
    for (Map.Entry<String, String> entry : var.entrySet()) {
        out.println("key= " + entry.getKey() + " and value= "
                + entry.getValue()+"<br/>");
    }
%>
</body>
</html>
