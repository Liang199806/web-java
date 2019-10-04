package com.web.servlet;

import com.web.entity.Book;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author tj
 * @ClassName BookDetailServlet
 * @Description TODO
 * @Date 2019/10/2
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/detail/*")
public class BookDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String requestPath = req.getRequestURI().trim();
        int position = requestPath.lastIndexOf("/");
        String id=requestPath.substring(position+1);
        ServletContext sc = this.getServletContext();
        List<Book> bookList = (List<Book>) sc.getAttribute("bookList");

        for(Book book:bookList){
            if(Integer.parseInt(id)==book.getId()){
                req.setAttribute("book",book);
//                resp.setContentType("text/plain;charset=utf-8");
//                resp.getWriter().print(book);

                req.getRequestDispatcher("/book_detail.jsp").forward(req,resp);
            }
        }
    }
}
