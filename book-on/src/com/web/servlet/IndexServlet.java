package com.web.servlet;

import com.web.entity.Book;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * @author tj
 * @ClassName IndexServlet
 * @Description TODO
 * @Date 2019/10/2
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext sc= this.getServletContext();

        List<Book> bookList = (List<Book>) sc.getAttribute("bookList");
        req.setAttribute("bookList",bookList);
//        resp.setContentType("text/plain;charset=utf-8");
//        resp.getWriter().print(bookList.toString());

        req.getRequestDispatcher("index.jsp").forward(req,resp);


    }
}
