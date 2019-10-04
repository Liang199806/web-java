<%@ page import="java.util.List" %>
<%@ page import="com.web.entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: tj
  Date: 2019/10/2
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主页</title>
    <style type="text/css">
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
      .right a{
        text-decoration: none;
        color:#000;
      }
      .right a:hover{
        color:#aaa;
      }
      /* 搜索区样式 */
      .search-wrap{
        height: 60px;
        background-color: #ddd;
        display: flex;
        align-items: center;
        padding-left: 10%;


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
  <hr>

  <!-- 搜索区 -->
  <div class="search-wrap">
    <h2>读书时刻</h2>
    <input type="text" placeholder="输入要搜索的内容" class="input-box">
    <button type="button" class="btn">
      <i class="iconfont" style="font-size: 30px;  color:#000000;">&#xe651;</i>
    </button>
    <%
      List<Book> bookList= (List<Book>) request.getAttribute("bookList");
      pageContext.setAttribute("size",bookList.size());
    %>
    一共${size}本书
  </div>

  <div class="container">
    <div class="left">
      <h2>好书精选</h2>
      <hr>
      <div class="row">
        <%
          for(Book book : bookList) {
            pageContext.setAttribute("book", book);
        %>
        <div class="column">
          <a href="${pageContext.request.contextPath}/detail/${book.id}">
            <img src="images/${book.cover}" class="avatar">
          </a>
          <p>${book.name}</p>
          <p>${book.author}</p>
        </div>
        <%
          }
        %>

      </div>
    </div>
    <div class="right">
        <div class="row_zongxiang">
          <h2>分类</h2>
          <div class="column1">
            <a href="#"><h3>畅销</h3></a>
            <br>
            <p><a href="#">文学</a> <a href="#">心理励志</a> <a href="#">历史哲学</a> <a href="#">党政读物</a> <a href="#">生活育儿</a> <a href="#">经济管理</a></p>
          </div>
          <div class="column1">
            <a href="#"><h3>生活</h3></a>
            <br>
            <p><a href="#">烹饪美食</a> <a href="#">健身运动</a> <a href="#">保健养生</a> <a href="#">期刊杂志</a> <a href="#">旅游</a> <a href="#">花卉宠物</a></p>
          </div>
          <div class="column1">
            <h3>科普</h3>
            <br>
            <p>科学类工具书 科普读物 天文地球科学 生物科学 化学</p>
          </div>
          <div class="column1">
            <h3>语言</h3>
            <br>
            <p>韩语 德语 法语 日语 英语 特殊语言</p>
          </div>
          <div class="column1">
            <h3>法律</h3>
            <br>
            <p>法律类工具书 法律法规文本 法律文书 普法、维权 司法制度</p>
          </div>
          <div class="column1">
            <h3>历史/地理</h3>
            <br>
            <p>地图 地理 风俗习惯 文物考古 人物传记 中国史 世界史 史学理论</p>
          </div>
        </div>
    </div>
  </div>

  <!-- 脚注 -->
  <footer>
    <p>南京工业职业技术学院</p>
  </footer>
  </body>
</html>
