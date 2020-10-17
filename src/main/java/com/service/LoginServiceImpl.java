package com.service;

import com.dao.LoginMapper;
import com.entity.User;

public class LoginServiceImpl implements ILoginService{
    private LoginMapper loginMapper;

    public void setLoginMapper(LoginMapper loginMapper) {
        this.loginMapper = loginMapper;
    }

    public User queryUser(int id, String password){
        return loginMapper.queryUser(id,password);
    };
    public boolean register(int uid,String pwd,String uname) {
        int num=loginMapper.register(uid, pwd, uname);
        if(num>=1) return true;
        else return false;
    }
}
