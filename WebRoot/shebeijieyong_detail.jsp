<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>

<div style="padding: 10px">
                
<% HashMap map = Query.make("shebeijieyong").where("id", request.getParameter("id")).find(); %><div class="admin-detail">
    <table class="table table-detail">
        <tr>

                                    <td width="180">
                设备编号            </td>
            <td><%= map.get("shebeibianhao") %></td>
            
                                    <td width="180">
                设备名称            </td>
            <td><%= map.get("shebeimingcheng") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                分类            </td>
            <td><% 
 HashMap mapshebeifenlei9 = new CommDAO().find("SELECT fenleimingcheng FROM shebeifenlei where id='"+map.get("fenlei")+"'"); 
 %><%= mapshebeifenlei9.get("fenleimingcheng") %></td>
            
                                    <td width="180">
                图片            </td>
            <td><img src="<%= map.get("tupian") %>" style="width: 350px"/></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                添加人            </td>
            <td><%= map.get("tianjiaren") %></td>
            
                                    <td width="180">
                状态            </td>
            <td><%= map.get("zhuangtai") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                借用时间            </td>
            <td><%= map.get("jieyongshijian") %></td>
            
                                    <td width="180">
                借用原因            </td>
            <td><%= map.get("jieyongyuanyin") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                借用人            </td>
            <td><%= map.get("jieyongren") %></td>
            
                    </tr>
    </table>
</div>


<div class="button-list">
    <div class="">
        <button onclick="history.go(-1);"
                style="background: #07de19; border: 1px solid #9a9a9a;border-top-width: 2px;border-left: 2px; ">返回
        </button>
        <button onclick="window.print()"
                style="background: #4961de; border: 1px solid #9a9a9a;border-top-width: 2px;border-left: 2px; ">打印本页
        </button>
    </div>
</div>
</div>
<%@ include file="foot.jsp" %>
