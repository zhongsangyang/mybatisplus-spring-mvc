<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/1
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
%>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1">
    <title>Hello Amaze UI</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="icon" type="image/png" href="<%=path%>/resources/i/favicon.png">

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="<%=path%>/resources/i/app-icon72x72@2x.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="<%=path%>/resources/i/app-icon72x72@2x.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="<%=path%>/resources/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">

    <link rel="stylesheet" href="<%=path%>/resources/bootstrap/css/amazeui.min.css">
    <link rel="stylesheet" href="<%=path%>/resources/bootstrap/css/app.css">
</head>
<body>
<p>
    Hello Amaze UI.
</p>

<!--在这里编写你的代码-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=path%>/resources/jquery/jquery-2.2.3.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="<%=path%>/resources/bootstrap/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="<%=path%>/resources/bootstrap/js/amazeui.min.js"></script>

<script>
    $(function(){
        var progress = $.AMUI.progress;

        $('#np-s').on('click', function() {
            progress.start();
            // progress.done();
        });

        $('#np-d').on('click', function() {
            // progress.done();
        });
    });

</script>
<button id="np-s" class="am-btn am-btn-primary">$.AMUI.progress.start();</button>
<button id="np-d" class="am-btn am-btn-success">$.AMUI.progress.done();</button>
</body>

</html>
