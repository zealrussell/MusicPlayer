package com.service;

import com.entity.User;

public interface ILoginService {
     User queryUser(int id, String password);
     boolean register(int uid,String password,String uname);
}
