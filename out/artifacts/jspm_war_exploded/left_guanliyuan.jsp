<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages0" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>账号管理</span>
    </a>
    <div id="pages0" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="admins_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">管理员账号管理</a>
            </li>
            <li class="sidebar-list-item"><a href="admins_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">管理员账号添加</a>
            </li>
            <li class="sidebar-list-item"><a href="xuesheng_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">添加新用户</a>
            </li>
            <li class="sidebar-list-item"><a href="xuesheng_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">用户注册管理</a>
            </li>
            <li class="sidebar-list-item"><a href="mod.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">密码修改</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages1" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>实验管理员管理</span>
    </a>
    <div id="pages1" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shiyanguanliyuan_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">实验管理员添加</a>
            </li>
            <li class="sidebar-list-item"><a href="shiyanguanliyuan_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">实验管理员查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages2" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>老师管理</span>
    </a>
    <div id="pages2" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="laoshi_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">老师添加</a>
            </li>
            <li class="sidebar-list-item"><a href="laoshi_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">老师查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages3" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备信息管理</span>
    </a>
    <div id="pages3" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeifenlei_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备分类添加</a>
            </li>
            <li class="sidebar-list-item"><a href="shebeifenlei_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备分类查询</a>
            </li>
            <li class="sidebar-list-item"><a href="shebeixinxi_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备信息添加</a>
            </li>
            <li class="sidebar-list-item"><a href="shebeixinxi_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备信息查询</a>
            </li>

        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages4" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备借用管理</span>
    </a>
    <div id="pages4" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeijieyong_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备借用查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages5" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备归还管理</span>
    </a>
    <div id="pages5" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeiguihuan_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备归还查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages6" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备维修管理</span>
    </a>
    <div id="pages6" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeiweixiu_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备维修查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages7" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备报废管理</span>
    </a>
    <div id="pages7" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeibaofei_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备报废查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages8" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>材料分类管理</span>
    </a>
    <div id="pages8" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="cailiaofenlei_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">材料分类添加</a>
            </li>
            <li class="sidebar-list-item"><a href="cailiaofenlei_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">材料分类查询</a>
            </li>
            <li class="sidebar-list-item"><a href="cailiaoxinxi_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">材料信息添加</a>
            </li>
            <li class="sidebar-list-item"><a href="cailiaoxinxi_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">材料信息查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages9" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>入库管理</span>
    </a>
    <div id="pages9" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="ruku_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">入库查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages10" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>出库管理</span>
    </a>
    <div id="pages10" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="chuku_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">出库查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages11" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>统计管理</span>
    </a>
    <div id="pages11" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="total.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">统计</a>
            </li>
        </ul>
    </div>
</li>
