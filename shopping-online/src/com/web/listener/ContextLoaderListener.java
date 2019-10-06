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
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users={
                new User(1,"aaa@qq.com","111","迅捷小子","2-1.jpg","江苏", LocalDate.of(2018,6,11)),
                new User(1,"bbb@qq.com","111","迅捷小子","2-2.jpg","江苏",LocalDate.of(2018,6,11)),
                new User(1,"ccc@qq.com","111","迅捷小子","2-3.jpg","江苏",LocalDate.of(2018,6,11))
        };
        userList = Arrays.asList(users);

        //创建并生成货物数据列表
        List<Commodity> commodityList=new ArrayList<>(9);
        Commodity[] commodities={
                new Commodity(1,"策霸老爹鞋","1-1.jpg","服饰运动",256.00,"策霸2019秋季老爹鞋学生休闲跑步鞋潮女新款韩版透气网面运动鞋女ins 657黑米 35码"),
                new Commodity(2,"双星健步鞋","1-2.jpg","服饰运动",188.00,""),
                new Commodity(3,"南极人床单","1-3.jpg","生活",199.00,""),
                new Commodity(4,"361男鞋","1-4.jpg","服饰运动",266.00,""),
                new Commodity(5,"华为 mate 30","1-5.jpg","手机",4999.00,""),
                new Commodity(6,"OPPO Reno Ace","1-6.jpg","手机",3999.00,""),
                new Commodity(7,"神舟","1-7.jpg","电脑",5999.00,""),
                new Commodity(8,"惠普","1-8.jpg","电脑",5699.00,""),
                new Commodity(9,"康佳","1-9.jpg","电脑",3999.00,"")
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
