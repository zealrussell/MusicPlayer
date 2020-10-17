package com.entity;

public class Singer {
    private int id;
    private String name;
    private int musicid;

    @Override
    public String toString() {
        return "Singer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", musicid=" + musicid +
                '}';
    }

    public Singer() {
    }

    public Singer(int id, String name, int musicid) {
        this.id = id;
        this.name = name;
        this.musicid = musicid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMusicid() {
        return musicid;
    }

    public void setMusicid(int musicid) {
        this.musicid = musicid;
    }
}
