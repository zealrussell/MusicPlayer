package com.controller;
import com.entity.*;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import com.service.ILoginService;
import com.service.IMusicService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.Map;

@Controller
public class MusicController {
    @Autowired
    @Qualifier(value = "MusicServiceImpl")
    private IMusicService musicService;

    @Autowired
    @Qualifier("LoginServiceImpl")
    private ILoginService loginService;

    @RequestMapping("/clogin")
    public String login(String uid,String password,String code,HttpServletResponse response, HttpSession session) throws IOException { //登录
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        int id = Integer.parseInt(uid);
        String checkcode = (String) session.getAttribute("CKECKCODE");
        String msg="wrong";
        if(!checkcode.equals(code)){
            msg="codeerror";
        }else{
            User user = loginService.queryUser(id,password);
            if(user!=null){
                session.setAttribute("userid",id);
                session.setAttribute("username",user.getUsername());
                msg="success";
            } else msg="error";
        }
        response.getWriter().print(msg);
        return null;
    }

    @RequestMapping("/cregister")
    public String register(String uid,String uname,String upwd,HttpServletResponse response) throws IOException {//注册
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        int id=Integer.parseInt(uid);
        if( loginService.register(id,uname,upwd) ) response.getWriter().print("success"); //插入成功
        else response.getWriter().print("error");
        return null;
    }

    @RequestMapping("/clogout")
    public String logout(HttpSession session){ //登出
        session.removeAttribute("userid");
        session.removeAttribute("username");
        return "login";
    }

    @RequestMapping("/cmain")
    public String main(Model model){  //主页面 ✔
        List<Music> musicList = musicService.queryAllMusic();
        JSON musicjson = JSONArray.fromObject(musicList);
        model.addAttribute("mlist",musicList);
        model.addAttribute("mjson",musicjson);
        return "main";
    }

    @RequestMapping("/csearch")
    public String search(String musicname,Model model){  //搜索
        List<Music> musicList = musicService.queryByName(musicname);
        JSON musicjson = JSONArray.fromObject(musicList);
        model.addAttribute("mlist",musicList);
        model.addAttribute("mjson",musicjson);
        return "main";
    }

    @RequestMapping("/ccollect")
    public String collect(Model model,HttpSession session) throws IOException {  //收藏页面
        int uid = (Integer) session.getAttribute("userid");
        List<Music> musicList = musicService.queryCollect(uid);
        JSON musicjson = JSONArray.fromObject(musicList);
        model.addAttribute("mlist",musicList);
        model.addAttribute("mjson",musicjson);
        return "collect";
    }

    @RequestMapping("/ccoloperation")
    public String add(String act,String musicid,HttpServletResponse response,HttpSession session) throws IOException { //增加、取消收藏
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        int uid = (Integer) session.getAttribute("userid");
        if(session.getAttribute("userid")==null) response.getWriter().print("error");
        else {
            int mid=Integer.parseInt(musicid);
            Collect collect = new Collect(uid, mid);
            if ("收藏".equals(act)) {
                musicService.addCollect(collect);
                response.getWriter().print("add");
            } else {
                musicService.deleteCollect(collect);
                response.getWriter().print("del");
            }
        }
        return null;
    }

    @RequestMapping("/ctype")
    public String type(Model model){
        List<Type> singerList = musicService.queryAllSinger();
        JSON singerjson = JSONArray.fromObject(singerList);
        model.addAttribute("slist",singerList);
        model.addAttribute("sjson",singerjson);
        return "type";
    }
    @RequestMapping("/cclassify")
    public String classify(String sid,Model model){
        int id=Integer.parseInt(sid);
        List<Music> musicList = musicService.queryBySinger(id);
        JSON musicjson = JSONArray.fromObject(musicList);
        model.addAttribute("mlist",musicList);
        model.addAttribute("mjson",musicjson);
        return "main";
    }
}
