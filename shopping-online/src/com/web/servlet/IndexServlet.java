package com.web.servlet;

import com.web.entity.Commodity;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author liang
 * @ClassName IndexServlet
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获得各个ServLeta共享对象
        ServletContext sc= this.getServletContext();

        //取得全局应用对象中的变量
        List<Commodity> commodityList = (List<Commodity>) sc.getAttribute("commodityList");
        //存入request
        req.setAttribute("commodityList",commodityList);
//        resp.setContentType("text/plain;charset=utf-8");
//        resp.getWriter().print(bookList.toString());

        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
