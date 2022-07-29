<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>

<div style="padding: 10px">
                
<% HashMap map = Query.make("shebeiweixiu").where("id", request.getParameter("id")).find(); %><div class="admin-detail">
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
 HashMap mapshebeifenlei21 = new CommDAO().find("SELECT fenleimingcheng FROM shebeifenlei where id='"+map.get("fenlei")+"'"); 
 %><%= mapshebeifenlei21.get("fenleimingcheng") %></td>
            
                                    <td width="180">
                添加人            </td>
            <td><%= map.get("tianjiaren") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                维修内容            </td>
            <td><%= map.get("weixiuneirong") %></td>
            
                                    <td width="180">
                维修人            </td>
            <td><%= map.get("weixiuren") %></td>
                    </tr>
        <tr>
            
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
