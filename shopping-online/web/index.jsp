<%@ page import="com.web.entity.Commodity" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: liang
  Date: 2019/10/3
  Time: 8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>主页</title>
  <style>
    @font-face {
      font-family: 'iconfont';  /* project id 1432390 */
      src: url('//at.alicdn.com/t/font_1432390_if9ejumwi4.eot');
      src: url('//at.alicdn.com/t/font_1432390_if9ejumwi4.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_1432390_if9ejumwi4.woff2') format('woff2'),
      url('//at.alicdn.com/t/font_1432390_if9ejumwi4.woff') format('woff'),
      url('//at.alicdn.com/t/font_1432390_if9ejumwi4.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_1432390_if9ejumwi4.svg#iconfont') format('svg');
    }
    @font-face {
      font-family: 'iconfont';  /* project id 1432390 */
      src: url('//at.alicdn.com/t/font_1432390_3z0l9fayu5f.eot');
      src: url('//at.alicdn.com/t/font_1432390_3z0l9fayu5f.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_1432390_3z0l9fayu5f.woff2') format('woff2'),
      url('//at.alicdn.com/t/font_1432390_3z0l9fayu5f.woff') format('woff'),
      url('//at.alicdn.com/t/font_1432390_3z0l9fayu5f.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_1432390_3z0l9fayu5f.svg#iconfont') format('svg');
    }
    *{
      margin:0;
      padding: 0;
    }

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
      background-color: rgb(215, 232, 251);
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding-left: 15px;
      padding-right: 15px;
    }

    .nav ul{
      align-items: center;
      list-style: none;
      display: flex;
      padding: auto 10px auto 10px;
    }

    .nav ul li{
      align-items: center;
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
    a{
      text-decoration: none;
      color:#000;
    }
    a:hover{
      color:#ddd;
    }

    /* 搜索区样式 */
    .search-wrap{
      height: 60px;
      background-color: rgb(148, 198, 250);
      display: flex;
      align-items: center;
      padding-left: 10%;
    }
    .search-wrap img{
      width: 100px;
      height: 90%;
      margin-left: 20px;
    }
    .input-box{
      width: 350px;
      height: 35px;
      border: 1px solid #eee;
      border-radius: 5px;
      margin-left: 10px;
    }
    /* 主体区样式 */
    .container{
      width: 85%;
      margin: 0 auto;
      display: flex;
      background-color: #FFFFFF;
      display: flex;
      padding: 5px 5px 5px 5px;
    }
    .left{
      flex: 0 0 66%;
      height:90%;
      background-color: #FFFFFF;
      padding:10px;
    }
    .right{
      flex: 0 0 33%;
      height:100%;
      margin-left: 5px ;
      background-color: #fff;
    }
    .row{
      display: flex;
      flex-wrap: wrap ;
      padding: 5px 5px 5px 5px;
    }
    .row_zongxiang{
      display: flex;
      flex-direction:column;
      padding:5px 5px 5px 5px;
    }

    .column{
      flex: 0 0 18%;
      height: 200px;
      background-color: #FFFFFF;
      /* border:1px solid #333 ; */
      border-radius: 10px;
      text-align: center;
      margin:5px 5px 5px 5px;
    }
    .column1{
      width:95%;
      height:100px;
      background-color: #FFFFFF;
      margin:5px 5px 5px 5px;


    }
    footer{
      height: 40px;
      background-color: #aaa;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .avatar{
      border-top-left-radius: 5%;
      border-top-right-radius: 5%;
      width: 100%;
      height: 70%;
    }
    .avatar1{
      border-radius: 50%;
      width: 50px;
      height: 50px;
    }
    .description{
      width:80%;
      margin:0 auto;
      /* min-height:50px; */
      font-size:13px;
      line-heignt:25px;
    }
    .btn{
      width: 40px;
      height: 40px;
      border-radius: 5px;
      background-color: rgb(148, 198, 250);
      font-size: 16px;
      outline:none;
      border: none;
      padding-top:-20px;
    }
    .btn1{
      width: 40px;
      height: 40px;
      border-radius: 5px;
      background-color: rgb(215, 232, 251);
      outline:none;
      border: none;
    }

  </style>
</head>
<body>
<%
  List<Commodity> commodityList= (List<Commodity>) request.getAttribute("commodityList");

%>
<!-- 顶部导航 -->
<div id="top">
  <jsp:include page="top.jsp"/>
</div>

<!-- 搜索区 -->
<div class="search-wrap">
  <h2>
    在线商城
  </h2>
  <input type="text" placeholder="请输入想要搜索的物品" class="input-box">
  <button type="button" class="btn">
    <i class="iconfont" style="font-size: 30px;  color:#000000;">&#xe651;</i>
  </button>
</div>

<div class="container">
  <div class="left">
    <h2>今日推荐</h2>
    <hr>
    <div class="row">
      <%
        for(Commodity commodity : commodityList) {
          pageContext.setAttribute("commodity", commodity);
      %>
      <div class="column">
        <a href="${pageContext.request.contextPath}/detail/${commodity.id}">
          <img src="images/${commodity.cover}" class="avatar">
        </a>
        <p>${commodity.name}</p>
        ￥：${commodity.price}
      </div>
      <%
        }
      %>
    </div>
  </div>
  <div class="right">
    <h2>物品分类</h2>
    <div class="row-zongxiang">
      <div class="column1">
        <a href="#"><h3>生活用品</h3></a>
        <br>
        <p><a href="#">牙刷</a> <a href="#">毛巾</a> <a href="#">面纸</a> <a href="#">水杯</a> <a href="#">镜子</a> </p>
      </div>
      <div class="column1">
        <a href="#"><h3>家用电器</h3></a>
        <br>
        <p><a href="#">洗衣机</a> <a href="#">电水壶</a> <a href="#">电风扇</a> <a href="#">空调</a> <a href="#">电视机</a> <a href="#">电脑</a></p>
      </div>
      <div class="column1">
        <h3>办公设备</h3>
        <br>
        <p>投影机 投影配件 多功能一体机 打印机 传真设备 验钞/点钞机 扫描设备 复合机</p>
      </div>
    </div>
  </div>
</div>
</body>
</html>
