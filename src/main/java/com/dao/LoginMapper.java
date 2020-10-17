package com.dao;

import com.entity.User;
import org.apache.ibatis.annotations.Param;

public interface LoginMapper {

    User queryUser(@Param("id") int id,@Param("password") String password);
    int register(@Param("id")int uid,@Param("username")String uname,@Param("password")String pwd);

}
