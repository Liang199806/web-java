package com.web.entity;

/**
 * @author liang
 * @ClassName Commodity
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
public class Commodity {
    private Integer id;
    private String name;
    private String cover;
    private String category;
    private Double price;
    private String xq;

    public Commodity(Integer id, String name, String cover, String category, Double price,String xq) {
        this.id = id;
        this.name = name;
        this.cover = cover;
        this.category = category;
        this.price=price;
        this.xq=xq;
    }

    public Commodity() {
    }

    public String getXq() {
        return xq;
    }

    public void setXq(String xq) {
        this.xq = xq;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Commodity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cover='" + cover + '\'' +
                ", category='" + category + '\'' +
                ", price=" + price +
                ", xq='" + xq + '\'' +
                '}';
    }

}
