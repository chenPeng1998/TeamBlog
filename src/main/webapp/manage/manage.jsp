<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/21
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <style type="text/css">
        *{
            font-family: "微软雅黑","文泉驿正黑","黑体";
        }
        body{
            width:100%;
            height:100%;
            background:url(../view/images/bg1.jpg) no-repeat;
            font-size: 30px;
            background-size:cover;
        }
        div{
            width:400px;
            height:250px;
            border-radius:20px;
            background-color:rgb(30,30,30);
            overflow:hidden;
        }
        .enter{
            margin-left: 50%;
            margin-top:20% ;

        }
        .key{
            font-size: 15px;
            margin:21px 0;
            height: 25px;
        }
        .key:hover{
            border-color:orange;
            background-color: #ccc;
        }
        .button{
            width:100%;
            height:45px;
            font-size: 25px;
            letter-spacing:25px;
            background-color: rgb(170,191,247);
        }
        .button:hover{
            font-weight: bold;
            background-color: rgb(0,128,128);
        }
        a{
            margin:20px;
            color: yellow;
        }
        .top{
            width:200px;
            color:orangered;
            margin:20px auto 0 auto;
            text-shadow:0 0 3px #FF0000;
        }
    </style>
</head>
<body>
<div class="enter">
    <form action="">
        <p class="top">后台管理登录</p>
        <a>账号:</a><input type="text" class="key"/><br/>
        <a>密码:</a><input type="password" class="key"/>
        <input type="submit" value="登录" class="button"/>
    </form>
</div>
</body>
</html>
