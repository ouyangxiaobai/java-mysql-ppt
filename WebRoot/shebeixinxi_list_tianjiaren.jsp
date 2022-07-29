<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<%@ include file="head.jsp" %>

<div style="padding: 10px">
    <%
        //------------------------------------------------
        String orderby = util.Request.get("order", "id");  // 获取搜索框中的排序字段、默认为发布时间
        String sort = util.Request.get("sort", "desc");   // 获取搜索框中的排序类型、默认为倒序

        String where = " 1=1 ";   // 防止sql 搜索条件为： where and a=b 这样的错误
        where += " AND tianjiaren='" + request.getSession().getAttribute("username") + "' "; //  设置tianjiaren为当前登录用户


// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中


        if (request.getParameter("shebeibianhao") != null && !"".equals(request.getParameter("shebeibianhao"))) {
            where += " AND shebeibianhao LIKE '%" + request.getParameter("shebeibianhao") + "%'";
        }
        if (request.getParameter("shebeimingcheng") != null && !"".equals(request.getParameter("shebeimingcheng"))) {
            where += " AND shebeimingcheng LIKE '%" + request.getParameter("shebeimingcheng") + "%'";
        }
        if (request.getParameter("fenlei") != null && !"".equals(request.getParameter("fenlei"))) {
            where += " AND fenlei ='" + request.getParameter("fenlei") + "'";
        }
        if (request.getParameter("zhuangtai") != null && !"".equals(request.getParameter("zhuangtai"))) {
            where += " AND zhuangtai ='" + request.getParameter("zhuangtai") + "'";
        }
        List<HashMap> list = Query.make("shebeixinxi").where(where).order(orderby + " " + sort).page(15);

    %>


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            设备信息        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>
                    <div class="form-group">
                        设备编号

                        <input type="text" class="form-control" style="" name="shebeibianhao"
                               value="<%= request.getParameter("shebeibianhao") !=null ? request.getParameter("shebeibianhao") : "" %>"/>
                    </div>
                    <div class="form-group">
                        设备名称

                        <input type="text" class="form-control" style="" name="shebeimingcheng"
                               value="<%= request.getParameter("shebeimingcheng") !=null ? request.getParameter("shebeimingcheng") : "" %>"/>
                    </div>
                    <div class="form-group">
                        分类

                        <select class="form-control class_fenlei13"
                                data-value="<%= request.getParameter("fenlei") !=null ? request.getParameter("fenlei") : "" %>"
                                id="fenlei" name="fenlei">
                            <option value="">请选择</option>
                            <%
                                List<HashMap> select = new CommDAO().select("SELECT * FROM shebeifenlei ORDER BY id desc");
                            %>
                            <% for (HashMap m : select) { %>
                            <option value="<%= m.get("id") %>"><%= m.get("fenleimingcheng") %>
                            </option>
                            <% } %>

                        </select>
                        <script>
                            $(".class_fenlei13").val($(".class_fenlei13").attr("data-value"))</script>

                    </div>
                    <div class="form-group">
                        状态

                        <select class="form-control class_zhuangtai14"
                                data-value="<%= request.getParameter("zhuangtai") !=null ? request.getParameter("zhuangtai") : "" %>"
                                id="zhuangtai" name="zhuangtai">
                            <option value="">请选择</option>
                            <option value="正常">正常</option>
                            <option value="借用">借用</option>
                            <option value="归还">归还</option>

                        </select>
                        <script>
                            $(".class_zhuangtai14").val($(".class_zhuangtai14").attr("data-value"))</script>

                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>

                    </select>
                    <select class="form-control" name="sort" id="sort">

                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>

                    </select>
                    <script>$("#orderby").val("<%= orderby %>");
                    $("#sort").val("<%= sort %>");</script>
                    <button type="submit" class="btn btn-default">
                        搜索
                    </button>


                    <!--form标签结束--></form>
            </div>


            <div class="">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 设备编号</th>
                        <th> 设备名称</th>
                        <th> 分类</th>
                        <th> 图片</th>
                        <th> 状态</th>

                        <th> 添加人</th>
                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        int i = 0;
                        for (HashMap map : list) {
                            i++;
                    %>
                    <tr id="<%= map.get("id") %>" pid="">
                        <td width="30" align="center">
                            <label>
                                <%= i %>
                            </label>
                        </td>
                        <td><%= map.get("shebeibianhao") %>
                        </td>
                        <td><%= map.get("shebeimingcheng") %>
                        </td>
                        <td><%
                            HashMap mapshebeifenlei2 = new CommDAO().find("SELECT fenleimingcheng FROM shebeifenlei where id='" + map.get("fenlei") + "'");
                        %><%= mapshebeifenlei2.get("fenleimingcheng") %>
                        </td>
                        <td><% if ("".equals(map.get("tupian"))) { %>-<% } else { %><img width="100"
                                                                                         src="<%= map.get("tupian") %>"/><% } %>
                        </td>
                        <td><%= map.get("zhuangtai") %>
                        </td>

                        <td><%= map.get("tianjiaren") %>
                        </td>
                        <td align="center"><%= map.get("addtime") %>
                        </td>
                        <td align="center">



                            <%
                                if(map.get("zhuangtai").equals("已归还"))
                                {
                            %>
                            <a href="shebeiweixiu_add.jsp?id=<%= map.get("id") %>">设备维修添加</a>

                            <a href="shebeibaofei_add.jsp?id=<%= map.get("id") %>">设备报废添加</a>


                            <%
                                }
                            %>

                            <a href="shebeixinxi_detail.jsp?id=<%= map.get("id") %>">
                                详细
                            </a>
                            <a href="shebeixinxi_updt.jsp?id=<%= map.get("id") %>">修改</a>
                            <a href="shebeixinxi.jsp?a=delete&id=<%= map.get("id") %>"
                               onclick="return confirm('真的要删除？')">删除</a>
                            <!--qiatnalijne-->
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>

            ${page.info}


        </div>


    </div>


</div>
<%@ include file="foot.jsp" %>
