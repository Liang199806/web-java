<%@ page import="com.web.entity.Commodity" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: liang
  Date: 2019/10/2
  Time: 13:18
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
      /* 搜索区样式 */
      .search-wrap{
        height: 60px;
        background-color: #ddd;
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
        width: 20px;
        height: 20px;
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
        background-color: rgba(0);


        font-size: 16px;
        outline:none;
        border: none;
        padding-top:-20px;
      }

    </style>
  </head>
  <body>
  <!-- 顶部导航 -->
  <div id="top">
    <jsp:include page="top.jsp"/>
  </div>

  <!-- 搜索区 -->
  <div class="search-wrap">
    <img src="images/苏宁易购.png">
    <input type="text" placeholder="输入要搜索的内容" class="input-box">
    <button type="button" class="btn">
      <i class="iconfont" style="font-size: 30px;  color:#000000;">&#xe651;</i>
    </button>
  </div>

  <div class="container">
    <div class="left">
      <h2>好书精选</h2>
      <hr>
      <div class="row">
        <%
          List<Commodity> commodityList= (List<Commodity>) request.getAttribute("commodityList");
          for(Commodity commodity : commodityList) {
            pageContext.setAttribute("commodity", commodity);
        %>
        <div class="column">
          <a href="${pageContext.request.contextPath}/detail/${commodity.id}">
            <img src="images/${commodity.cover}" class="avatar">
          </a>
          <p>${commodity.name}</p>
          <p>${commodity.author}</p>
        </div>
        <%
          }
        %>

      </div>
    </div>
  </div>
  </body>
</html>
