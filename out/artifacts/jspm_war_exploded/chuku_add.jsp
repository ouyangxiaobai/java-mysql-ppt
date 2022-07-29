<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>

<div style="padding: 10px">


    <% if (request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) { %>
    <script>
        alert('对不起,请您先登陆!');
        location.href = 'login.jsp';
    </script>
    <%
            return;
        } %>


    <% if (null == request.getParameter("id") || "".equals(request.getParameter("id"))) { %>
    <script>
        alert('非法操作');
        history.go(-1);
    </script>
    <% out.close(); %>
    <% } %>        <% HashMap readMap = Query.make("cailiaoxinxi").where("id", request.getParameter("id")).find(); %>


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">
                添加出库:
            </div>
            <div class="panel-body">
                <form action="chuku.jsp?a=insert" method="post" name="form1" id="form1"><!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">材料编号</label>
                            <div class="col-sm-8">

                                <%= readMap.get("cailiaobianhao") %><input type="hidden" id="cailiaobianhao"
                                                                           name="cailiaobianhao"
                                                                           value="<%= Info.html(readMap.get("cailiaobianhao")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">材料名称</label>
                            <div class="col-sm-8">

                                <%= readMap.get("cailiaomingcheng") %><input type="hidden" id="cailiaomingcheng"
                                                                             name="cailiaomingcheng"
                                                                             value="<%= Info.html(readMap.get("cailiaomingcheng")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">分类</label>
                            <div class="col-sm-8">

                                <%
                                    HashMap mapcailiaofenlei43 = new CommDAO().find("SELECT fenleimingcheng FROM cailiaofenlei where id='" + readMap.get("fenlei") + "'");
                                %><%= mapcailiaofenlei43.get("fenleimingcheng") %><input type="hidden" id="fenlei"
                                                                                         name="fenlei"
                                                                                         value="<%= Info.html(readMap.get("fenlei")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">库存</label>
                            <div class="col-sm-8">

                                <%= readMap.get("kucun") %><input type="hidden" id="kucun" name="kucun"
                                                                  value="<%= Info.html(readMap.get("kucun")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">操作人</label>
                            <div class="col-sm-8">

                                <%= readMap.get("caozuoren") %><input type="hidden" id="caozuoren" name="caozuoren"
                                                                      value="<%= Info.html(readMap.get("caozuoren")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">出库数量<span
                                    style="color: red;">*</span></label>
                            <div class="col-sm-8">

                                <input type="number" class="form-control" style="width:150px;" data-rule-required="true"
                                       data-msg-required="请填写出库数量" number="true" data-msg-number="输入一个有效数字" min="1"
                                       max="<%= readMap.get("kucun") %>"
                                id="chukushuliang" name="chukushuliang" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">备注</label>
                            <div class="col-sm-8">

                                <textarea style="width: 80%;height: 120px" class="form-control" id="beizhu"
                                          name="beizhu"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">出库人</label>
                            <div class="col-sm-8">

                                <input type="text" class="form-control" style="width:150px;" readonly="readonly"
                                       id="chukuren" name="chukuren"
                                       value="<%= request.getSession().getAttribute("username") !=null ? request.getSession().getAttribute("username") : "" %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
                            <div class="col-sm-8">

                                <input type="hidden" name="cailiaoxinxiid"
                                       value="<%= request.getParameter("id") !=null ? request.getParameter("id") : "" %>"/>
                                <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>


                                <button type="submit" class="btn btn-primary" name="Submit">
                                    提交
                                </button>
                                <button type="reset" class="btn btn-default" name="Submit2">
                                    重置
                                </button>


                            </div>
                        </div>
                    </div>

                    <!--form标签结束--></form>
            </div>
        </div>

        <!-- container定宽，并剧中结束 --></div>


    <script>
        $(function () {
            $('#form1').validate();
        });
    </script>


</div>
<%@ include file="foot.jsp" %>
