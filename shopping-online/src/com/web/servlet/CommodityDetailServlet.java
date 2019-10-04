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
 * @author tj
 * @ClassName CommodityDetailServlet
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/detail/*")
public class CommodityDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestPath = req.getRequestURI().trim();
        int position = requestPath.lastIndexOf("/");
        String id=requestPath.substring(position+1);
        ServletContext sc = this.getServletContext();

        List<Commodity> commodityList = (List<Commodity>) sc.getAttribute("commodityList");

        for(Commodity commodity:commodityList){
            if(Integer.parseInt(id)==commodity.getId()){
                req.setAttribute("commodity",commodity);
//                resp.getWriter().print(commodity);

                req.getRequestDispatcher("/commodity_detail.jsp").forward(req,resp);
            }
        }
    }
}
