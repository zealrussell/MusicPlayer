<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>login</title>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/loginjs.js"></script>
    <link  rel="stylesheet"  href="./css/login.css">
    <link  rel="stylesheet"  href="font-awesome-4.7.0/css/font-awesome.css">
</head>
<body>
    <div class="login">
        <h1> Login</h1>

        <div class="form">
        <form id="lform">

            <div class="item">
                <i class="fa fa-user-circle" aria-hidden="true"></i>
                <input type=text placeholder="UserName" name="uid">
            </div>

            <div class="item">
                <i class="fa fa-key" aria-hidden="true"></i>
                <input type=password placeholder="Password" name="password">
            </div>


            <div class="item1">
                <i class="fa fa-clipboard" aria-hidden="true"></i>
                <input type=text placeholder="Vertification" name="code">
                <img src="img.jsp"style='width:100px;height:30px;' />
            </div>
        <input type="button" id="lbtn" value="Login" style="margin-top: 50px;
    width: 200px;
    height: 30px;
    border: 0px;
    background: #ffffff80;
    background-image: linear-gradient(120deg, #db3125 0%, #578bc3 100%);
    border-radius: 15px;"></input>
        <p>
            还没有账号？<a href="register.jsp" target="_self" >立即注册</a>
        </p>
<%--            <input type="button" value="注册" onclick="window.location.href='register.jsp'">--%>

        </form>
        </div>
    </div>
    <script src="js/loginjs.js"></script>
</body>
</html>
