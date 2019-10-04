<%@ page import="com.web.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: tj
  Date: 2019/10/2
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .iconfont{
            font-family:"iconfont" !important;
            font-size:16px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }

        body{
            color:#333;
        }
        header{
            height: 60px;
            background-color: rgb(244, 224, 189);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-left: 15px;
            padding-right: 15px;
        }

        .nav{
            flex: 0 0 50%;
            list-style: none;
            display: flex;
        }
        .nav li{
            margin-left: 10px;
            margin-right: 10px;
            width: 50px;

        }
        .user-info{
            padding-right: 20px ;
        }
        /* 超链接样式 */
        .nav li a{
            text-decoration: none;
            color:#000;
        }
        .nav li a:hover {
            color:#fff;
        }
        .avatar1{
            border-radius: 50%;
            width: 20px;
            height: 20px;
        }
    </style>
</head>
<body>
<%
    User user= (User) session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div class="explore">
    <ul class="nav">
        <li>首页</li>
        <li>浏览发现</li>
    </ul>
</div>

</body>
</html>
