<%@ page language="java" import="dao.CommDAO" pageEncoding="utf-8" %>
<%@page import="dao.Query" %>
<%@page import="java.util.HashMap" %>
<%@page import="util.Info" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>加入收藏</title>
</head>
<body>
<%
    if ((String) request.getSession().getAttribute("username") == null || (String) request.getSession().getAttribute("username") == "") {
        out.print("<script>javascript:alert('对不起，请您先登陆！');history.back();</script>");
    } else {
        String id = request.getParameter("id");
        String biao = request.getParameter("biao");
        String ziduan = request.getParameter("ziduan");
        String biaoti = Query.make(biao).where("id", id).value(ziduan);
        HashMap ext = new HashMap();
        ext.put("biaoti", biaoti);
        ext.put("url", request.getHeader("referer"));
        ext.put("username" , session.getAttribute("username"));
        ext.put("xwid" , id);
        ext.put("biao" , biao);
        ext.put("ziduan" , ziduan);
        ext.put("addtime" , Info.getDateStr());
        Query.make("shoucangjilu").add(ext);
        out.print("<script>alert('收藏成功!!');location.href='" + request.getHeader("Referer") + "';</script>");
    }
%>

</body>
</html>


