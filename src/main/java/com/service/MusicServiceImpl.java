package com.service;

import com.dao.MusicMapper;
import com.entity.Collect;
import com.entity.Music;
import com.entity.Singer;
import com.entity.Type;

import java.util.List;

public class MusicServiceImpl implements IMusicService{

    private MusicMapper musicMapper;
    public void setMusicMapper(MusicMapper musicMapper){
        this.musicMapper=musicMapper;
    }

    public List<Music> queryAllMusic() {
        return musicMapper.queryAllMusic();
    }

    public List<Music> queryByName(String name) {
        return musicMapper.queryByName(name);
    }

    public List<Music> queryCollect(int id) {
        return musicMapper.queryCollect(id);
    }

    public void addCollect(Collect collect) {
        musicMapper.addCollect(collect);
    }

    public void deleteCollect(Collect collect) {
        musicMapper.deleteCollect(collect);
    }

    public List<Type> queryAllSinger(){
        return musicMapper.queryAllSinger();
    }
    public List<Music> queryBySinger(int id){
        return musicMapper.queryBySinger(id);
    }

}
