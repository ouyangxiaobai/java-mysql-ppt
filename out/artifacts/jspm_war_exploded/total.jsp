<%@ page import="util.Request" %>
<%@ page import="dao.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/datepicker/WdatePicker.js"></script>

    <script src="js/highcharts/highcharts.js"></script>
    <script src="js/highcharts/modules/exporting.js"></script>
    <script src="js/highcharts/modules/series-label.js"></script>
    <script src="js/highcharts/modules/oldie.js"></script>

</head>
<body>

<h3>仓库物品统计</h3>

<form action="?" method="get">
    开始日期:<input sype="text" name="kaishiriqi" value="<%=Request.get("kaishiriqi")%>"
                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">
    结束日期:<input sype="text" name="jieshuriqi" value="<%=Request.get("jieshuriqi")%>"
                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">
    <button type="submit">提交</button>
</form>

<%
    String where = "1=1 ";
    if (!Request.get("kaishiriqi").equals("")) {
        where += " and addtime>='" + Request.get("kaishiriqi") + " 00:00:00' ";
    }
    if (!Request.get("jieshuriqi").equals("")) {
        where += " and addtime<='" + Request.get("jieshuriqi") + " 23:59:59' ";
    }
    List<HashMap> ruku = Query.make("ruku").field("sum(rukushuliang) rukushuliang,cailiaomingcheng")
            .where(where)
            .group("cailiaomingcheng")
            .order("rukushuliang desc")
            .select();

    List<HashMap> chuku = Query.make("chuku").field("sum(chukushuliang) chukushuliang,cailiaomingcheng")
            .where(where)
            .group("cailiaomingcheng")
            .order("chukushuliang desc")
            .select();
%>

<%--<table class="table">
    <thead>
    <tr>
        <th>物品名称</th>
        <th>入库数量</th>
    </tr>
    </thead>
    <tbody>
    <%for (HashMap map : ruku) {%>
    <tr align="center">
        <td><%=map.get("cailiaomingcheng")%>
        </td>
        <td><%=map.get("rukushuliang")%>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>--%>

<br>
<div id="container" style="max-width:100%;height:400px"></div>
<script>
    Highcharts.chart('container', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '入库统计'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Brands',
            colorByPoint: true,
            data: [
                <% for(HashMap map : ruku){ %>
                {
                    name: '<%=map.get("cailiaomingcheng")%>',
                    y: <%=map.get("rukushuliang")%>,
                    sliced: true,
                    selected: true
                },
                <%}%>
            ]
        }]
    });
</script>


<div id="container1" style="max-width:100%;height:400px"></div>
<script>
    Highcharts.chart('container1', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '出库统计'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Brands',
            colorByPoint: true,
            data: [
                <% for(HashMap map : chuku){ %>
                {
                    name: '<%=map.get("cailiaomingcheng")%>',
                    y: <%=map.get("chukushuliang")%>,
                    sliced: true,
                    selected: true
                },
                <%}%>
            ]
        }]
    });
</script>

</body>
</html>