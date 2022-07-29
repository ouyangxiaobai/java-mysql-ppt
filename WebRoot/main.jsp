<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>实验室设备管理系统-后台管理</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="htstyle/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="htstyle/fa/css/all.css">
    <!-- Google fonts - Popppins for copy-->

    <!-- orion icons-->
    <link rel="stylesheet" href="htstyle/css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="htstyle/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="htstyle/css/custom.css">
    <!-- Favicon-->
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body class="body-main">
<!-- navbar-->
<header class="header">
    <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow">

        <a href="index.html" class="font-weight-bold text-uppercase text-base">实验室设备管理系统</a>
        <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
            <li class="nav-item ml-auto">
                <a href="./" target="" class="btn btn-primary">前台首页</a>
            </li>
            <li class="nav-item ml-2">
                <a href="logout.jsp" class="btn btn-danger" onclick="return confirm('你确定退出？')">安全退出</a>
            </li>
            <li class="nav-item ml-2">
                欢迎登录：<%= request.getSession().getAttribute("username") != null ? request.getSession().getAttribute("username") : "" %>
                ，<%= request.getSession().getAttribute("cx") != null ? request.getSession().getAttribute("cx") : "" %>
            </li>

        </ul>
    </nav>
</header>
<div class="d-flex align-items-stretch">

    <div id="sidebar" class="sidebar py-3">
        <ul class="sidebar-menu list-unstyled">

            <% if ("管理员".equals(request.getSession().getAttribute("cx"))) { %>
            <%@ include file="left_guanliyuan.jsp" %>
            <% } %>
            <% if ("学生".equals(request.getSession().getAttribute("cx"))) { %>
            <%@ include file="left_xuesheng.jsp" %>
            <% } %>
            <% if ("实验管理员".equals(request.getSession().getAttribute("cx"))) { %>
            <%@ include file="left_shiyanguanliyuan.jsp" %>
            <% } %>
            <% if ("老师".equals(request.getSession().getAttribute("cx"))) { %>
            <%@ include file="left_laoshi.jsp" %>
            <% } %>
        </ul>


    </div>
    <div class="page-holder w-100 d-flex flex-wrap">
        <div class="container-fluid px-xl-5">
            <section class="py-5">
                <div class="iframe">
                    <iframe src="sy.jsp" name="main" frameborder="0" marginwidth="0" marginheight="0"
                            scrolling="auto"></iframe>
                </div>

            </section>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="htstyle/vendor/jquery/jquery.min.js"></script>
<script src="htstyle/vendor/popper.js/umd/popper.min.js"></script>
<script src="htstyle/bootstrap/js/bootstrap.min.js"></script>
<script src="htstyle/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="htstyle/js/js.cookie.min.js"></script>
<script src="htstyle/js/front.js"></script>

<script>
    setInterval(function () {
        $.post("./", "", function () {

        });
    }, 60 * 1000);
</script>

</body>
</html>