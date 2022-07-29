<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>

<div style="padding: 10px">

<% HashMap map = Query.make("cailiaoxinxi").where("id", request.getParameter("id")).find(); %><div class="admin-detail">
    <table class="table table-detail">
        <tr>

                                    <td width="180">
                材料编号            </td>
            <td><%= map.get("cailiaobianhao") %></td>
            
                                    <td width="180">
                材料名称            </td>
            <td><%= map.get("cailiaomingcheng") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                分类            </td>
            <td><% 
 HashMap mapcailiaofenlei34 = new CommDAO().find("SELECT fenleimingcheng FROM cailiaofenlei where id='"+map.get("fenlei")+"'"); 
 %><%= mapcailiaofenlei34.get("fenleimingcheng") %></td>
            
                                    <td width="180">
                图片            </td>
            <td><img src="<%= map.get("tupian") %>" style="width: 350px"/></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                库存            </td>
            <td><%= map.get("kucun") %></td>
            
                                    <td width="180">
                备注            </td>
            <td><%= map.get("beizhu") %></td>
                    </tr>
        <tr>
            
                                    <td width="180">
                操作人            </td>
            <td><%= map.get("caozuoren") %></td>
            
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
