<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="htstyle/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="htstyle/fa/css/all.css">

    <link rel="stylesheet" href="htstyle/css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="htstyle/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="htstyle/css/custom.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page-holder d-flex align-items-center">
    <div class="container">
        <div class="row align-items-center py-5">

            <div class="col-lg-12 px-lg-4">
                <h2 class="text-base text-primary text-uppercase mb-4">实验室设备管理系统</h2>
                <p class="text-muted">欢迎使用实验室设备管理系统后台管理系统</p>
                <form id="loginForm" action="login?ac=adminlogin&a=a" class="mt-4" method="post">
                    <div class="form-group mb-4">
                        <input type="text" name="username" placeholder="账号"
                               class="form-control border-0 shadow form-control-lg">
                    </div>
                    <div class="form-group mb-4">
                        <input type="password" name="pwd" placeholder="密码"
                               class="form-control border-0 shadow form-control-lg text-violet">
                    </div>
                    <div class="form-group mb-4">
                        <select name="cx" class="form-control border-0 shadow form-control-lg text-violet">
                            <option value="管理员">管理员</option>  
  <option value="学生">学生</option>  
  <option value="实验管理员">实验管理员</option>  
  <option value="老师">老师</option>                        </select>
                    </div>
                    <div class="form-group mb-4">
                        <input type="text" name="pagerandom" placeholder="验证码" class="form-control border-0 shadow form-control-lg text-violet"
                               style="width: 180px;display: inline-block"/>
                        <img alt="刷新验证码" title="点击刷新验证码"
                             onClick="this.src='image.jsp?time='+new Date().getTime();"
                             src="image.jsp"
                             style="cursor:pointer; padding-top:10px;width: 60px;height: 22px;float: right">
                    </div>
                    <button type="submit" class="btn btn-primary shadow px-5">登录</button>
                </form>
            </div>
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
</body>
</html>