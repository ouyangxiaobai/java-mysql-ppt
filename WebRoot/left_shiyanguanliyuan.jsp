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
            <li class="sidebar-list-item"><a href="shebeifenlei_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备分类添加</a>
            </li>
            <li class="sidebar-list-item"><a href="shebeifenlei_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备分类查询</a>
            </li>
            <li class="sidebar-list-item"><a href="shebeixinxi_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">设备信息添加</a>
            </li>
            <li class="sidebar-list-item"><a href="shebeixinxi_list_tianjiaren.jsp" target="main"
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
            <li class="sidebar-list-item"><a href="shebeijieyong_list_tianjiaren.jsp" target="main"
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
            <li class="sidebar-list-item"><a href="shebeiguihuan_list_tianjiaren.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">归还查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages3" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备维修管理</span>
    </a>
    <div id="pages3" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeiweixiu_list_tianjiaren.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">维修查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages4" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>设备报废管理</span>
    </a>
    <div id="pages4" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shebeibaofei_list_tianjiaren.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">报废查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages5" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>材料管理</span>
    </a>
    <div id="pages5" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="cailiaofenlei_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">材料分类添加</a>
            </li>
            <li class="sidebar-list-item"><a href="cailiaofenlei_list.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">材料分类查询</a>
            </li>
            <li class="sidebar-list-item"><a href="cailiaoxinxi_add.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">材料添加</a>
            </li>
            <li class="sidebar-list-item"><a href="cailiaoxinxi_list_caozuoren.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">材料查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages6" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>入库管理</span>
    </a>
    <div id="pages6" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="ruku_list_rukuren.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">入库查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages7" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>出库管理</span>
    </a>
    <div id="pages7" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="chuku_list_chukuren.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">出库查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages8" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>个人中心</span>
    </a>
    <div id="pages8" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shiyanguanliyuan_updtself.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">修改个人资料</a>
            </li>
            <li class="sidebar-list-item"><a href="mod.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">修改密码</a>
            </li>

        </ul>
    </div>
</li>
