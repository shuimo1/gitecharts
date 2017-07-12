<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/12 0012
  Time: 下午 07:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/echarts.min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Awo7qmeXbnS7VwWQjTURo7pTv8arqKpE"></script>
    <script>
        var map;
        function bai1(){
            map=new BMap.Map("container");//创建地图实例
            var point=new BMap.Point(113.65,34.76);//创建点坐标
            map.centerAndZoom(point,15);//初始化地图，设置中心店坐标和地图级别
        }
        //定位
        function bai2() {
            var addr=new BMap.Geolocation();
            addr.getCurrentPosition(function (data) {
                alert(data.point.lng);
                alert(data.point.lat);
                //通过经纬度坐标来确定当前所在地
                var ab=new BMap.Point(data.point.lng,data.point.lat);
                //建立解码器
                var coder=new BMap.Geocoder();
                //通过经纬度计算（解析）行政位置
                var araea=coder.getLocation(ab,function (d) {
                    alert(d.address);
                });
            });
        }
        function  bai3() {
            bai1();
            var sch=new BMap.LocalSearch(map,{
                renderOptions:{map:map,autoViewport:true}
            });
            sch.searchNearby("酒店","黄河路");
        }
    </script>
</head>
<body>
    <div id="container" style="height: 600px;width: 600px"></div>
    <button onclick="bai1()">百度地图</button>
    <button onclick="bai2()">定位</button>
    <button onclick="bai3()">搜索</button>
</body>
</html>
