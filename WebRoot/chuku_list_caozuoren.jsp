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
        where += " AND caozuoren='" + request.getSession().getAttribute("username") + "' "; //  设置caozuoren为当前登录用户


// 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中


        if (request.getParameter("cailiaoxinxiid") != null && !"".equals(request.getParameter("cailiaoxinxiid"))) {
            where += " AND cailiaoxinxiid='" + request.getParameter("cailiaoxinxiid") + "' ";

        }
        if (request.getParameter("cailiaobianhao") != null && !"".equals(request.getParameter("cailiaobianhao"))) {
            where += " AND cailiaobianhao LIKE '%" + request.getParameter("cailiaobianhao") + "%'";
        }
        if (request.getParameter("cailiaomingcheng") != null && !"".equals(request.getParameter("cailiaomingcheng"))) {
            where += " AND cailiaomingcheng LIKE '%" + request.getParameter("cailiaomingcheng") + "%'";
        }
        if (request.getParameter("fenlei") != null && !"".equals(request.getParameter("fenlei"))) {
            where += " AND fenlei ='" + request.getParameter("fenlei") + "'";
        }
        if (request.getParameter("chukushuliang_start") != null && !"".equals(request.getParameter("chukushuliang_start"))) {
            where += " AND chukushuliang >='" + request.getParameter("chukushuliang_start") + "' ";
        }
        if (request.getParameter("chukushuliang_end") != null && !"".equals(request.getParameter("chukushuliang_end"))) {
            where += " AND chukushuliang <='" + request.getParameter("chukushuliang_end") + "' ";
        }
        if (request.getParameter("beizhu") != null && !"".equals(request.getParameter("beizhu"))) {
            where += " AND beizhu LIKE '%" + request.getParameter("beizhu") + "%'";
        }
        List<HashMap> list = Query.make("chuku").where(where).order(orderby + " " + sort).page(15);

    %>


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            出库        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>
                    <div class="form-group">
                        材料编号

                        <input type="text" class="form-control" style="" name="cailiaobianhao"
                               value="<%= request.getParameter("cailiaobianhao") !=null ? request.getParameter("cailiaobianhao") : "" %>"/>
                    </div>
                    <div class="form-group">
                        材料名称

                        <input type="text" class="form-control" style="" name="cailiaomingcheng"
                               value="<%= request.getParameter("cailiaomingcheng") !=null ? request.getParameter("cailiaomingcheng") : "" %>"/>
                    </div>
                    <div class="form-group">
                        分类

                        <select class="form-control class_fenlei37"
                                data-value="<%= request.getParameter("fenlei") !=null ? request.getParameter("fenlei") : "" %>"
                                id="fenlei" name="fenlei">
                            <option value="">请选择</option>
                            <%
                                List<HashMap> select = new CommDAO().select("SELECT * FROM cailiaofenlei ORDER BY id desc");
                            %>
                            <% for (HashMap m : select) { %>
                            <option value="<%= m.get("id") %>"><%= m.get("fenleimingcheng") %>
                            </option>
                            <% } %>

                        </select>
                        <script>
                            $(".class_fenlei37").val($(".class_fenlei37").attr("data-value"))</script>

                    </div>
                    <div class="form-group">
                        出库数量

                        <input type="text" class="form-control" style="width:80px;" name="chukushuliang_start"
                               value="<%= request.getParameter("chukushuliang_start") !=null ? request.getParameter("chukushuliang_start") : "" %>"/>-
                        <input type="text" class="form-control" style="width:80px;" name="chukushuliang_end"
                               value="<%= request.getParameter("chukushuliang_end") !=null ? request.getParameter("chukushuliang_end") : "" %>"/>
                    </div>
                    <div class="form-group">
                        备注

                        <input type="text" class="form-control" id="beizhu" name="beizhu"
                               value="<%= request.getParameter("beizhu") !=null ? request.getParameter("beizhu") : "" %>"/>
                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>
                        <option value="kucun">
                            按库存
                        </option>
                        <option value="chukushuliang">
                            按出库数量
                        </option>

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
                        <th> 材料编号</th>
                        <th> 材料名称</th>
                        <th> 分类</th>
                        <th> 库存</th>
                        <th> 操作人</th>
                        <th> 出库数量</th>
                        <th> 备注</th>
                        <th> 出库人</th>
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
                        <td><%= map.get("cailiaobianhao") %>
                        </td>
                        <td><%= map.get("cailiaomingcheng") %>
                        </td>
                        <td><%
                            HashMap mapcailiaofenlei41 = new CommDAO().find("SELECT fenleimingcheng FROM cailiaofenlei where id='" + map.get("fenlei") + "'");
                        %><%= mapcailiaofenlei41.get("fenleimingcheng") %>
                        </td>
                        <td><%= map.get("kucun") %>
                        </td>
                        <td><%= map.get("caozuoren") %>
                        </td>
                        <td><%= map.get("chukushuliang") %>
                        </td>
                        <td><%= map.get("beizhu") %>
                        </td>
                        <td><%= map.get("chukuren") %>
                        </td>
                        <td align="center"><%= map.get("addtime") %>
                        </td>
                        <td align="center">

                            <a href="chuku_updt.jsp?id=<%= map.get("id") %>">修改</a>
                            <a href="chuku.jsp?a=delete&id=<%= map.get("id") %>"
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
