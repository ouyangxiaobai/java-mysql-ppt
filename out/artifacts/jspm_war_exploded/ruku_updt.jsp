<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>

<div style="padding: 10px">


    <% if( request.getSession().getAttribute("username") == null || "".equals( request.getSession().getAttribute("username") ) ){ %>
    <script>
        alert('对不起,请您先登陆!');
        location.href='login.jsp';
    </script>
    <%
        return;
    } %>


<%
        // 获取需要编辑的数据
    String updtself="0"; // 设置更新
    HashMap mmm = new CommDAO().getmap(request.getParameter("id") , "ruku");
    %>








<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            编辑入库:
        </div>
        <div class="panel-body">
            <form action="ruku.jsp?a=update" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">材料编号</label>
        <div class="col-sm-8">
            
                                                    <%= mmm.get("cailiaobianhao") %><input type="hidden" id="cailiaobianhao" name="cailiaobianhao" value="<%= Info.html(mmm.get("cailiaobianhao")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">材料名称</label>
        <div class="col-sm-8">
            
                                                    <%= mmm.get("cailiaomingcheng") %><input type="hidden" id="cailiaomingcheng" name="cailiaomingcheng" value="<%= Info.html(mmm.get("cailiaomingcheng")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">分类</label>
        <div class="col-sm-8">
            
                                                    <% 
 HashMap mapcailiaofenlei39 = new CommDAO().find("SELECT fenleimingcheng FROM cailiaofenlei where id='"+mmm.get("fenlei")+"'"); 
 %><%= mapcailiaofenlei39.get("fenleimingcheng") %><input type="hidden" id="fenlei" name="fenlei" value="<%= Info.html(mmm.get("fenlei")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">库存</label>
        <div class="col-sm-8">
            
                                                    <%= mmm.get("kucun") %><input type="hidden" id="kucun" name="kucun" value="<%= Info.html(mmm.get("kucun")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">操作人</label>
        <div class="col-sm-8">
            
                                                    <%= mmm.get("caozuoren") %><input type="hidden" id="caozuoren" name="caozuoren" value="<%= Info.html(mmm.get("caozuoren")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">入库数量<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="number" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写入库数量" number="true" data-msg-number="输入一个有效数字" id="rukushuliang" name="rukushuliang" value="<%= Info.html(mmm.get("rukushuliang")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">备注</label>
        <div class="col-sm-8">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" id="beizhu" name="beizhu"><%= Info.html(mmm.get("beizhu")) %></textarea>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">入库人</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" readonly="readonly" id="rukuren" name="rukuren" value="<%= mmm.get("rukuren") %>"/>                                            
        </div>
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
        <div class="col-sm-8">
            
                                            <input name="id" value="<%= mmm.get("id") %>" type="hidden"/>
                                                <input name="cailiaoxinxiid" value="<%= mmm.get("cailiaoxinxiid") %>" type="hidden"/>
                                                <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                        <input name="updtself" value="<%= updtself %>" type="hidden"/>
                                        
                    
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
