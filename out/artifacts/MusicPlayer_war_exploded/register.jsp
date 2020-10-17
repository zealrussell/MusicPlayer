<%--
  Created by IntelliJ IDEA.
  User: zeal
  Date: 2020/9/16
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="js/jquery.min.js"></script>
    <link  rel="stylesheet"  href="./css/register.css">
    <link  rel="stylesheet"  href="font-awesome-4.7.0/css/font-awesome.css">
</head>
<body>
<div class="login">
    <h1> Register</h1>
    <div class="form">
        <form id="rform">
            <div class="item">
                <i class="fa fa-drivers-license" aria-hidden="true"></i>
                <input type=text placeholder="Phone" oninput="value=value.replace(/[^\d]/g,'')" name="uid">
            </div>

            <div class="item">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <input type=text placeholder="UserName" name="uname">
            </div>

            <div class="item">
                <i class="fa fa-key" aria-hidden="true"></i>
                <input type="text" placeholder="Password" name="upwd">
            </div>

            <input type="button"  id="rbtn" value="Register" style="margin-top: 50px;
    width: 200px;
    height: 30px;
    border: 0px;
    background: #ffffff80;
    background-image: linear-gradient(120deg, #db3125 0%, #578bc3 100%);
    border-radius: 15px;"></input>
            <p>
            已有账号？<a href="login.jsp">请登录</a>
            </p>
        </form>
    </div>
</div>

    <script src="js/registerjs.js"></script>
</body>
</html>
