package com.entity;

public class Music {
    private int id;
    private String name;
    private String singername;
    private String url;

    @Override
    public String toString() {
        return "Music{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", singername=" + singername +
                ", url='" + url + '\'' +
                '}';
    }

    public Music() {
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

    public String getSingername() {
        return singername;
    }

    public void setSingername(String singername) {
        this.singername = singername;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
