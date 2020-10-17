package com.entity;

public class Collect {
    private int userid;
    private int musicid;

    public Collect() {
    }

    public Collect(int userid, int musicid) {
        this.userid = userid;
        this.musicid = musicid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getMusicid() {
        return musicid;
    }

    public void setMusicid(int musicid) {
        this.musicid = musicid;
    }
}
