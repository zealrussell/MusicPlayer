<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zeal
  Date: 2020/9/23
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Type</title>
    <style type="text/css">
        #pbtn{
            width: 60px;
            height: 30px;
            border-radius: 10px;
            background: skyblue;
        }
        #cbtn{
            width: 60px;
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
    <link  rel="stylesheet"  href="./css/fenlei.css">
    <link  rel="stylesheet"  href="font-awesome-4.7.0/css/font-awesome.css">
    <link  rel="stylesheet"  href="fonts/iconfont.css">
</head>

<body>
    <%@include file="header.jsp" %>

    <div class="middle">
        <!--LEFT-->
        <div class="content_left">
            <div class="content_left1">
                <img src="Img/hp.jpg"></img>
            </div>
            <div align="center" class="content_left2">name</div>

        </div>
        <!--RIGHT-->
        <div class="content_right">
            <div>
                <div class="list_title">
                    <div class="fenlei"><th>歌手</th></div>
                </div>
                <div class="listSong">
                    <c:forEach items="${slist}" var="singer" varStatus="pos">
                        <div class="ls2">
                            <a href="cclassify?sid=${singer.id}">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
                </table>
            </div>

        </div>
    </div>

</body>
</html>
