package com.web.servlet;

import com.web.entity.User;
import com.web.service.UserService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author liang
 * @ClassName LoginServlet
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("account");
        String password = req.getParameter("password");

        UserService userService=new UserService();

        ServletContext sc=this.getServletContext();
        List<User> userList= (List<User>) sc.getAttribute("userList");

        userService.setUserList(userList);

        User user= userService.signIn(account,password);
        if(user != null){
            HttpSession session= req.getSession();
            session.setAttribute("user",user);
            resp.sendRedirect("/index");
        }else{
            resp.setContentType("text/html;charset=utf-8");
            resp.setCharacterEncoding("UTF-8");

            PrintWriter out =resp.getWriter();
            out.print("<script>alert('账号或密码错误');location.href='/login';</script>");
        }
    }
}
