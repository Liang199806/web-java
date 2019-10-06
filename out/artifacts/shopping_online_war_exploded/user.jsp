<%@ page import="com.web.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: liang
  Date: 2019/10/4
  Time: 10:30
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
            height: 50px;
            background-color: rgb(244, 224, 189);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-left: 15px;
            padding-right: 15px;
        }
        .row {
            display: flex;
            /*四个内边距*/
            padding: 5px 5px 5px 5px;
            /*允许换行，这样用一个row套若干个column即可*/
            flex-wrap: wrap;
        }

        /*父元素等宽*/
        .col-12 {
            flex: 0 0 99%;
        }

        /*父元素4/5*/
        .col-8 {
            flex: 0 0 80%;
        }

        /*父元素一半*/
        .col-6 {
            flex: 0 0 49%;
        }

        /*父元素1/3*/
        .col-4 {
            flex: 0 0 33%;
        }

        /*父元素1/4*/
        .col-3 {
            flex: 0 0 24%;
        }

        /*父元素1/6*/
        .col-2 {
            flex: 0 0 16.6%;
            display: flex;
        }
        .col-2 ul li{
            list-style-type: none;

        }


        .nav ul{
            align-items: center;
            list-style: none;
            display: flex;
            padding: auto 10px auto 10px;
        }

        .nav ul li{

            margin-left: 20px;
            margin-right: 20px;
            width: 80px;

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
            width: 40px;
            height: 40px;
        }
        .explore {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(255, 119, 0);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
        }


        .nav {
            display: flex;
            align-items: center;
            list-style: none;
        }

        .nav li {
            color: #000000;
            font-size: 18px;
            margin-right: 20px;
        }

        .search-input {
            flex: 0 0 30%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: rgb(187, 187, 202);
            font-size: 16px;
        }

        .info {
            display: flex;
        }

        .profile {
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }

        h2 {
            color: rgb(73, 73, 73);
            margin-left: 15px;
        }

        .info-box {
            margin: 10px 10px 10px 40px;
            display: flex;
            width: 90%;
            height: 240px;
            border: 1px solid #eee;
            border-radius: 5px;
            background-color: rgb(237, 244, 237);
        }

        .info-box .top {
            width:50% ;
            height: 80%;
            display: flex;
            border-bottom: 1px solid #e4e6e5;
        }

        .info-box .top img {
            width: 50%;
            height: 70%;
            border-radius: 50%;
            margin-right: 10px;
        }
        .top1{
            width:50%;
            height:80%;
            display: flex;
            border-bottom: 1px solid #e4e6e5;
        }
        .avatar2{
            width: 85%;
            height: 120%;
            /*border-radius: 50%;*/
            padding-left: 10px;
            margin-right: 10px;
        }

        p {
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .item {
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .read {
            border-bottom: 1px solid #eee;
        }

        .read a {
            color: rgb(51, 119, 170);
            text-decoration: none;
        }

        .container {
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
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

<%--浏览区域--%>
<div class="explore">

    <ul class="nav">
        <li>
            <h3>
                我的易购
            </h3>
        </li>
        <li>首页</li>
        <li>账户管理</li>
        <li>消息</li>
    </ul>
    <label>
        <input type="text" placeholder="搜索你感兴趣的内容和人" class="search-input">
    </label>
</div>
<br>

<%--页面主题区域--%>
<div class="container">
    <div class="row">
        <%--左侧1/6区域--%>
        <div class="col-2">
            <ul>
                <li>
                    <h3>
                        我的购物车
                    </h3>
                    <ul>
                        <li>
                        </li>
                    </ul>
                </li>
                <li>
                    <h3>
                        订单中心
                    </h3>
                    <ul>
                        <li>我的订单</li>
                        <li>我的常购清单</li>
                        <li>我的回收订单</li>
                        <li>我的拍卖</li>
                        <li>服务订单</li>
                    </ul>
                </li>
                <li>
                    <h3>
                        我的资产
                    </h3>

                    <ul>
                        <li>我的云钻</li>
                        <li> 我的金融</li>
                        <li>我的优惠券</li>
                    </ul>
                </li>
                <li>
                    <h2>
                        关注中心
                    </h2>

                    <ul>
                        <li>我的关注</li>
                        <li>我的足迹</li>
                        <li>我的评价</li>
                        <li>我的抽奖</li>

                    </ul>
                </li>
            </ul>
        </div>

        <%-- 右侧2/3区域--%>
        <div class="col-8">
            <div class="info-box">
                <div class="top">
                    <img src="images/${user.avatar}" alt="">
                    <div>

                        <p>昵称：<br>${user.nickname}</p>
                        <p>收获地址：<br>${user.address}</p>

                    </div>
                </div>

                <div class="top1">
                    <img src="images/${user.avatar}" alt="" class="avatar2">
                </div>
            </div>

            <br>
            <div class="item">
                <ul class="nav">
                    <li>我的订单</li>
                </ul>
                <br>
                <div class="read">
                    <p><a href="">${user.nickname}</a>购买了
                        <a href="">李宁 音速7</a>
                    </p>
                    <p style="color: #9b9b9b;">2018年1月2日</p>
                </div>
                <div class="read">
                    <p><a href="">${user.nickname}</a>购买了
                        <a href="">老人帽</a>
                    </p>
                    <p style="color: #9b9b9b;">2018年1月2日</p>
                </div>
                <div class="read">
                    <p><a href="">${user.nickname}</a>购买了
                        <a href="">雷神鼠标</a>
                    </p>
                    <p style="color: #9b9b9b;">2018年1月2日</p>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
