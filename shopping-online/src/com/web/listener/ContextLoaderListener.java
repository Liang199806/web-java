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
 * @author liang
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
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users={
                new User(1,"liang1","111","大神1","2-4.jpg","江苏", LocalDate.of(2018,6,11)),
                new User(1,"liang2","111","大神2","2-2.jpg","江苏",LocalDate.of(2018,6,11)),
                new User(1,"liang3","111","大神3","2-3.jpg","江苏",LocalDate.of(2018,6,11))
        };
        userList = Arrays.asList(users);

        //创建并生成货物数据列表
        List<Commodity> commodityList=new ArrayList<>(9);
        Commodity[] commodities={
                new Commodity(1,"李宁 音速7","1-11.jpg","服饰运动",459.00,"李宁音速7代19夏季新款男专业比赛中帮减震实战篮球鞋"),
                new Commodity(2,"潮流工装裤（男）","1-12.jpg","服饰运动",188.00,""),
                new Commodity(3,"健身衣","1-13.jpg","服饰运动",399.00,""),
                new Commodity(4,"老人帽","1-14.jpg","帽子",59.00,""),
                new Commodity(5,"iphone xr手机壳","1-15.jpg","手机",49.00,""),
                new Commodity(6,"电脑包","1-16.jpg","电脑",399.00,""),
                new Commodity(7,"雷神鼠标","1-17.jpg","电脑",599.00,""),
                new Commodity(8,"音响","1-18.jpg","电脑",569.00,""),
                new Commodity(9,"电脑椅","1-19.jpg","家具",399.00,"")
        };
        commodityList = Arrays.asList(commodities);

        //获得全局变量
        ServletContext servletContext=sce.getServletContext();
        //设置全局变量属性，将用户和货物列表数据记入，整个应用可以共享
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
