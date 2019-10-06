package com.web.service;

import com.web.entity.User;

import java.util.List;

/**
 * @author liang
 * @ClassName UserService
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
public class UserService {
    private List<User> userList;



    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public User signIn(String account,String password){
        int flag=0;
        for(User user:userList){
            if(user.getAccount().equals(account) && user.getPassword().equals(password)){
                return user;
            }
        }
        return null;
    }
}
