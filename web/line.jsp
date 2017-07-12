<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/12 0012
  Time: 下午 03:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/echarts.min.js"></script>
    <script>
        function line1() {
            var li=echarts.init(document.getElementById("line1"));
            var option={
              xAxis:{
                  data:["2000","2005","2010","2015"]
              },
              yAxis:{},
              series:{
                  //line指定为折线图
                  type:"line",
                  data:[
                      {value:100,name:"2000年国检"},
                      {value:300,name:"2005年国检"},
                      {value:700,name:"2010年国检"},
                      {value:200,name:"2015年国检"}
                  ]
              }
            };
            li.setOption(option);
        }
        function line2() {
            var lin=echarts.init(document.getElementById("line2"));
            var option={
                backgroundColor:'#77777',
                tooltip:{
                    trigger:'item',
                    formatter:"{a}<br/>{b}:{c} ({d}%)"
                },
                series:{
                    name:"产值",
                    type:"pie",
                    radius:'55%',
                    center:['50%','50%'],
                    data:[
                        {value:200,name:"一月份"},
                        {value:600,name:"二月份"},
                        {value:300,name:"三月份"},
                        {value:500,name:"四月份"}
                    ]
                }
            };
            lin.setOption(option);
        }
    </script>
</head>
<body>
    <button onclick="line1()">折线图</button>
    <button onclick="line2()">圆形图</button>
    <div id="line1" style="width: 400px;height: 500px"></div>
    <div id="line2" style="width: 500px;height: 500px"></div>
</body>
</html>
