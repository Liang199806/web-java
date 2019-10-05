package com.web.entity;

/**
 * @author tj
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

    public Commodity(Integer id, String name, String cover, String category) {
        this.id = id;
        this.name = name;
        this.cover = cover;
        this.category = category;
    }

    public Commodity() {
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
                '}';
    }
}
