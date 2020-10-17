package com.service;

import com.entity.Collect;
import com.entity.Music;
import com.entity.Type;

import java.util.List;

public interface IMusicService {
    List<Music> queryAllMusic();

    List<Music> queryByName(String name);
    //收藏列表
    List<Music> queryCollect(int id);
    //增加收藏
    void addCollect(Collect collect);
    //取消收藏
    void deleteCollect(Collect collect);
    //
    List<Type> queryAllSinger();
    //分类
    List<Music> queryBySinger(int id);
}
