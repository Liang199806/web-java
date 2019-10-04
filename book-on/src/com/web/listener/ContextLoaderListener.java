package com.web.listener;

import com.web.entity.Book;
import com.web.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author tj
 * @ClassName ContextLoaderListener
 * @Description TODO
 * @Date 2019/10/2
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {
    /**
     * 容器初始化
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        List<User> userList = new ArrayList<>(3);
        User[] users={
                new User(1,"aaa@qq.com","111","迅捷小子","1.jpg","江苏", LocalDate.of(2018,6,11)),
                new User(2,"bbb@qq.com","111","迅捷小子","2.jpg","江苏",LocalDate.of(2018,6,11)),
                new User(3,"ccc@qq.com","111","迅捷小子","3.jpg","江苏",LocalDate.of(2018,6,11))
        };
        userList = Arrays.asList(users);

        List<Book> bookList=new ArrayList<>(6);
        Book[] books={
                new Book(1,"历史与传奇","1.jpg","张佳玮"),
                new Book(2,"摘星","2.jpg","付强"),
                new Book(3,"唐诗宋词简介","3.jpg","戴建业"),
                new Book(4,"一生自在","4.jpg","季羡林"),
                new Book(5,"优势成长","5.jpg","帅建祥"),
                new Book(6,"人性的弱点","6.jpg","[美]戴尔·卡耐基")
        };
        bookList = Arrays.asList(books);

        ServletContext servletContext=sce.getServletContext();
        servletContext.setAttribute("userList",userList);
        servletContext.setAttribute("bookList",bookList);
        System.out.println("容器启动");

    }

    /**
     * 销毁
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");

    }
}
