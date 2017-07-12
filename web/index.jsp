<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/12 0012
  Time: 下午 02:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="js/echarts.min.js"></script>
    <script>
      function  first1() {
          //指定显示图标的位置
          var admin=echarts.init(document.getElementById("first"));
          var option={
              xAxis:{
                  data:["一月","二月","三月","四月"]
              },
              yAxis:{},
              series:{
                  type:"bar",
                  data:[200,800,500,600]
              }
          };
          admin.setOption(option);
      }
      function  year1(){
          var year=echarts.init(document.getElementById("er"));
          var option={
              xAxis:{
                  data:["2015年","2016年","2017年","2018年"]
              },
              yAxis:{},
              series:{
                  type:"bar",
                  data:["10000","16000","8000","25000"]

              }
          };
          year.setOption(option);
      }
    </script>
  </head>
  <body>
    <button onclick="first1()">月销售额</button>
    <button onclick="year1()">年销售额</button>
     <div id="first" style="width: 300px;height: 400px"></div>
    <div style="width: 500px;height: 400px">
     <div id="er" style="width: 300px;height: 400px;flex: auto"></div>
    </div>
  </body>
</html>
