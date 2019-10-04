<%@ page import="com.web.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: tj
  Date: 2019/10/4
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    User user= (User) session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>

<header>
    <div >
        <!-- 导航 -->
        <ul class="nav">
            <li>
                <a href="${pageContext.request.contextPath}/index">首页</a>
            </li>
            <li>
                <a href="#">网站导航</a>
            </li>
            <li>
                <a href="#">商家入驻</a>
            </li>
            <li>
                <a href="#">客户服务</a>
            </li>

        </ul>
    </div>
    <div >
        <ul class="nav">
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
            <li>
                <h2><a href="${pageContext.request.contextPath}/login">
                    <button type="button" class="btn">
                        <i class="iconfont" style="font-size: 30px;  color:#000000;">&#xe61d;</i>
                    </button>
                </a></h2>
            </li>
            <li>
                去登录
            </li>

            <%
                }
            %>
        </ul>
    </div>
</header>
