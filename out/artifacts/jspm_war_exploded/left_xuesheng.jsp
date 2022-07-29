<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages0" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备信息管理</span>
    </a>
    <div id="pages0" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeixinxi_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备信息查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages1" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备借用管理</span>
    </a>
    <div id="pages1" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeijieyong_list_jieyongren.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">借用查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages2" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备归还管理</span>
    </a>
    <div id="pages2" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeiguihuan_list_guihuanren.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">归还查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages3" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>个人中心</span>
    </a>
    <div id="pages3" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="xuesheng_updtself.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">修改个人资料</a>
            </li>
            <li class="sidebar-list-item"><a href="mod.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">修改密码</a>
            </li>

        </ul>
    </div>
</li>
