<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: zeal
  Date: 2020/9/9
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <style type="text/css">
        #pbtn{
            width: 60px;
            height: 30px;
            border-radius: 10px;
            background: skyblue;
        }
        #cbtn{
            width: 80px;
            height: 30px;
            border-radius: 10px;
            background: skyblue;
        }
        #dbtn{
            width: 60px;
            height: 30px;
            border-radius: 10px;
            background: skyblue;
        }
        #search-sub{
            width: 30px;
            height: 30px;
            text-align: center;
            font-size: 12px;
            line-height: 1.428571429;
            border-radius: 15px;
            float:left;
            background-color: whitesmoke;
            border: 1px solid #d5d5d5;
        }
    </style>
    <link  rel="stylesheet"  href="./css/main.css">
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <link  rel="stylesheet"  href="./css/main.css">
    <link  rel="stylesheet"  href="font-awesome-4.7.0/css/font-awesome.css">
    <link  rel="stylesheet"  href="fonts/iconfont.css">
</head>

<body>
    <%@include file="header.jsp" %>

    <!--列表-->
    <div class="middle">
        <!--LEFT-->
        <div class="content_left">
            <div class="content_left1">
                <img src="Img/hp.jpg"></img>
            </div>
            <div align="center" class="content_left2"> <%=session.getAttribute("username")%></div>
        </div>

        <!--RIGHT-->
        <div class="content_right">
            <div>
                    <div class="list_title">
                        <div class="geming"><th>歌名</th></div>
                        <div class="geshou"><th>歌手</th></div>
                        <div class="bofang"><th>播放</th></div>
                        <div class="shoucang"><th>收藏</th></div>
                        <div class="caozuo"><th>操作</th></div>
                    </div>
<%--                <c:forEach items="${mlist}" var="music" varStatus="pos">--%>
<%--                    <tr>--%>
<%--                        <td><a>${music.name}</a> </td>--%>
<%--                        <td>${music.singername} </td>--%>
<%--                        <td> <button id="pbtn" type="button" value="${pos.index}" onclick="fplay(${pos.index})">播放</button></td>--%>
<%--                        <td> <button name="cbtn" type="button" value="${music.id}">收藏</button></td>--%>
<%--                        <td><a href="wav/BTS-MICDrop.wav" download="${music.name}">下载</a> </td>--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>
                <div class="listSong">
                    <c:forEach items="${mlist}" var="music" varStatus="pos">
                        <div class="ls1">
                            <a>${music.name}</a>
                        </div>
                        <div class="ls2">
                                ${music.singername}
                        </div>
                        <div class="ls3">
                            <button class="fa fa-play main-button" aria-hidden="true"id="pbtn" type="button" value="${pos.index}" onclick="fplay(${pos.index})"></button>
                        </div>
                        <div class="ls4">
                            <button class="fa fa-heartbeat" aria-hidden="true" id="cbtn" type="button" value="${music.id}" onclick="fcollect(this)">收藏</button>
                        </div>
                        <div class="ls5">
                            <a href="wav/BTS-MICDrop.wav" download="${music.name}">
                                <button class="fa fa-download" aria-hidden="true"id="dbtn" type="button"></button>
                            </a>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>

    </div>
    <%@include file="footer.jsp" %>

    <script>
        var au = $("#audio")[0];
        var urll,pos=0;
        var listt = ${mjson};
        //点击播放
    </script>
    <script src="js/playjs.js"></script>
    <script src="js/collectjs.js"></script>
</body>
</html>
