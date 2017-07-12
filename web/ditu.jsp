<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/12 0012
  Time: 下午 04:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/echarts.min.js"></script>
    <script src="js/china.js"></script>
    <script>
        function di1() {
            var chart=echarts.init(document.getElementById("di"));
            var option={
                series:[
                    {
                        name:"中国",
                        type: "map",
                        mapType: "china"
                    }
                ]
            };
            chart.setOption(option);
        }
        function di2() {
            var chart=echarts.init(document.getElementById("di"));
            var option={
                geo:{map:"china"},
                tooltip:{
                    trigger:"item",
                    formatter:"{b}<br/>{c}"
                },
                series:[{
                    name:"PM2.5",
                    type:"effectScatter",//散点图
                    coordinateSystem:"geo",
                    itemStyle:{
                        normal: {
                            color: '#f4e925',
                            shadowBlur: 10,
                            shadowColor: '#333'
                        }
                    },

                    data:[
                        {name:"郑州市",value:[113.65,34.76,200]},
                        {name:"北京市",value:[116.46,39.92,20]},
                        {name:"武汉市",value:[114.31,30.52,300]}
                    ]
                }]
            };
            chart.setOption(option);
        }
    </script>
</head>
<body>
<button onclick="di1()">中国地图</button>
<button onclick="di2()">实时地图</button>
    <div id="di" style="width: 600px;height: 600px"></div>
</body>
</html>
