package com.web.listener;

import com.web.entity.Commodity;
import com.web.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.annotation.WebServlet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author tj
 * @ClassName ContextLoaderListener
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {
    /**
     * 初始化
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

        List<Commodity> commodityList=new ArrayList<>(9);
        Commodity[] commodities={
                new Commodity(1,"策霸老爹鞋","1.jpg","服饰运动"),
                new Commodity(2,"双星健步鞋","2.jpg","服饰运动"),
                new Commodity(3,"南极人床单","3.jpg","生活"),
                new Commodity(4,"361男鞋","4.jpg","服饰运动"),
                new Commodity(5,"华为 mate 30","5.jpg","手机"),
                new Commodity(6,"OPPO Reno Ace","6.jpg","手机"),
                new Commodity(7,"神舟","7.jpg","电脑"),
                new Commodity(8,"惠普","8.jpg","电脑"),
                new Commodity(9,"康佳","9.jpg","电脑"),
                new Commodity(10,"格力","10.jpg","家电")
        };
        commodityList = Arrays.asList(commodities);

        ServletContext servletContext=sce.getServletContext();
        servletContext.setAttribute("userList",userList);
        servletContext.setAttribute("commodityList",commodityList);
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
