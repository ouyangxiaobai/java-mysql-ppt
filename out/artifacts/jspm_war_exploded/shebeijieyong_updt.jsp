<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

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
    HashMap mmm = new CommDAO().getmap(request.getParameter("id") , "shebeijieyong");
    %>








<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            编辑设备借用:
        </div>
        <div class="panel-body">
            <form action="shebeijieyong.jsp?a=update" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">设备编号</label>
        <div class="col-sm-8">
            
                                                    <%= mmm.get("shebeibianhao") %><input type="hidden" id="shebeibianhao" name="shebeibianhao" value="<%= Info.html(mmm.get("shebeibianhao")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">设备名称</label>
        <div class="col-sm-8">
            
                                                    <%= mmm.get("shebeimingcheng") %><input type="hidden" id="shebeimingcheng" name="shebeimingcheng" value="<%= Info.html(mmm.get("shebeimingcheng")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">分类</label>
        <div class="col-sm-8">
            
                                                    <% 
 HashMap mapshebeifenlei11 = new CommDAO().find("SELECT fenleimingcheng FROM shebeifenlei where id='"+mmm.get("fenlei")+"'"); 
 %><%= mapshebeifenlei11.get("fenleimingcheng") %><input type="hidden" id="fenlei" name="fenlei" value="<%= Info.html(mmm.get("fenlei")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">图片</label>
        <div class="col-sm-8">
            
                                                    <% if( "".equals( mmm.get("tupian") ) ){ %>-<% } else { %><img width="100" src="<%= mmm.get("tupian") %>"/><% } %><input type="hidden" id="tupian" name="tupian" value="<%= Info.html(mmm.get("tupian")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">添加人</label>
        <div class="col-sm-8">
            
                                                    <%= mmm.get("tianjiaren") %><input type="hidden" id="tianjiaren" name="tianjiaren" value="<%= Info.html(mmm.get("tianjiaren")) %>"/>                                            
        </div>
    </div>
</div>
                                                                            <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">借用时间<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn'})" style="width:120px;" data-rule-required="true" data-msg-required="请填写借用时间" id="jieyongshijian" name="jieyongshijian" readonly="readonly" value="<%= Info.html(mmm.get("jieyongshijian")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">借用原因<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:250px;" data-rule-required="true" data-msg-required="请填写借用原因" id="jieyongyuanyin" name="jieyongyuanyin" value="<%= Info.html(mmm.get("jieyongyuanyin")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">借用人</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" readonly="readonly" id="jieyongren" name="jieyongren" value="<%= mmm.get("jieyongren") %>"/>                                            
        </div>
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
        <div class="col-sm-8">
            
                                            <input name="id" value="<%= mmm.get("id") %>" type="hidden"/>
                                                <input name="shebeixinxiid" value="<%= mmm.get("shebeixinxiid") %>" type="hidden"/>
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
