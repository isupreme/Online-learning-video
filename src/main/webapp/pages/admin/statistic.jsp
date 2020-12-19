<%--
  Created by IntelliJ IDEA.
  User: 99
  Date: 2020/12/19
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String jsUrl=request.getContextPath()+"/style/js/";
    String cssUrl=request.getContextPath()+"/style/css/";
    String imgUrl=request.getContextPath()+"/style/img/";
%>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <!-- 引入 echarts.js -->
    <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
    <script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>

</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    var date = (function () {
        var result;
        $.ajax({
            url: "/statistic",
            method: "get",
            data: "json",
            async: false,
            success: function (res) {
                result = res;
            }
        });
        return result;
    })();


    // 指定图表的配置项和数据

    var option = {
        title: {
            text: '近7日用户活跃程度'
        },
        legend: {
            data:['活跃度']
        },
        xAxis: {
            data: [date[6].date,date[5].date,date[4].date,date[3].date,date[2].date,date[1].date,date[0].date]
        },
        yAxis: {},
        series: [{
            name: '活跃度',
            type: 'line',
            smooth: true,
            data: [date[6].count,date[5].count,date[4].count,date[3].count,date[2].count,date[1].count,date[0].count]
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>
