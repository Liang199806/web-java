<%@ page import="com.web.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: tj
  Date: 2019/10/2
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    User user= (User) session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>
<header>
    <div>
        <!-- 导航 -->
        <ul class="nav">
            <li>
                <a href="${pageContext.request.contextPath}/index">首页</a>
            </li>
            <li>
                <a href="#">浏览</a>
            </li>
            <li>
                <a href="#">话题</a>
            </li>
            <li>
                <a href="#">精品</a>
            </li>
            <li>
                <a href="#">消息</a>
            </li>
        </ul>
    </div>
    <div class="user-info">
    <ul>
            <%
                if (user != null) {
            %>
        <li>
            <a href="${pageContext.request.contextPath}/user">
                <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="" class="avatar1">
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/logout">退出</a>
        </li>
            <%
            }else {

            %>
            <h2><a href="${pageContext.request.contextPath}/login">
                <button type="button" class="btn">
                    <i class="iconfont" style="font-size: 30px;  color:#000000;">&#xe61d;</i>去登录
                </button>
            </a></h2>
            <%
                }
            %>
    </ul>
    </div>
</header>
