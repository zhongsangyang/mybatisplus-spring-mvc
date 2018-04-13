<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/11
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path=request.getContextPath();%>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1">
    <title>Amaze UI Examples</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
    <meta name="msapplication-TileColor" content="#0e90d2">

    <link rel="stylesheet" href="<%=path%>/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="<%=path%>/assets/css/app.css">

    <script type="text/javascript" src="<%=path%>/resources/bootstrap/js/jquery-2.0.3.min.js"></script>
    <link rel="stylesheet" href="<%=path%>/baiduImageUpload/css/webuploader.css"/>

    <script type="text/javascript" src="<%=path%>/baiduImageUpload/js/webuploader.js"></script>

</head>
<body>

<div class="am-g">

    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
        <h3>登录</h3>
        <hr>
        <div class="am-btn-group">
            <a href="#" class="am-btn am-btn-secondary am-btn-sm"><i class="am-icon-github am-icon-sm"></i> Github</a>
            <a href="#" class="am-btn am-btn-success am-btn-sm"><i class="am-icon-google-plus-square am-icon-sm"></i> Google+</a>
            <a href="#" class="am-btn am-btn-primary am-btn-sm"><i class="am-icon-stack-overflow am-icon-sm"></i> stackOverflow</a>
        </div>

        <br>
        <br>
        <form  id="defaultForm" method="post" class="am-form">
            <label for="username">用户名称:</label>
            <input type="text" name="username" id="username" required data-bv-notempty-message="The username is required and cannot be empty"/>
            <br>
            <label for="password">密码:</label>
            <input type="password" name="password" id="password" required data-bv-hexcolor-message="The input is not a valid color code">

            <br>
            <label for="email">电子邮件 / Email</label>
            <input type="email"  id="email" placeholder="输入你的电子邮件 / Email">

            <br>
            <label for="phone">电话 / Telephone</label>
            <input type="tel"  id="phone" name="phone" placeholder="输入你的电话号码 / Telephone">
            <br>
            <label for="qq">QQ</label>
            <input type="number"  name="qq" id="qq" pattern="[0-9]*"  placeholder="输入你的QQ号码" required>
            <br>
            <label for="weibo">微博 / Twitter</label>
            <input type="text"   name="weibo" id="weibo" placeholder="输入你的微博 / Twitter">
            <br>
            <label for="introductSelf">简介 / Intro</label>
            <textarea class=""  rows="5"  placeholder="输入个人简介" id="introductSelf" name="introductSelf"></textarea>
            <small>250字以内写出你的一生...</small>
            <br>
            <label for="remember-me" class="am-u-lg-5 am-u-sm-5 am-u-md-5">
                <input id="remember-me" type="checkbox">
                记住密码
            </label>
            <br>



            <br />
            <div >
                <div id="fileList"></div>
                <div id="filePicker">
                    选择图片
                </div>
                <div id="quxiao" style="width:100px;height: 30px;background-color:#2b83ba;border-radius:3px 3px 3px 3px;color: white;font-size: small;padding-left: 10px">
                    取消这个图片
                </div>
            </div>
            <br>
            <div class="am-u-md-6">
                <input type="submit" name="" value="忘记密码 ^_^? " class="am-btn am-btn-default am-btn-sm am-fr">
                <input type="submit" id="btnSave" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">
            </div>
            <c:if test="${message}!=null">
                <span>${message}</span>
            </c:if>
             <c:choose>
                 <c:when test="${message}==null">
                    <span>未登录</span>
                 </c:when>
             </c:choose>
        </form>

    </div>
</div>



</body>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=path%>/assets/js/jquery-2.2.3.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="<%=path%>/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="<%=path%>/assets/js/amazeui.min.js"></script>
<script>
    var fileId;



    var uploader = WebUploader.create({
        //auto : true,
        auto:false,
        swf : '<%=path%>/baiduImageUpload/Uploader.swf',

        // 文件接收服务端。
        server : '<%=path%>/myUser/regSter',

        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick : {id : '#filePicker',
            //只能选择一个文件上传
            multiple: false},

        //限制只能上传一个文件
        fileNumLimit: 1,
        method:'POST',
        // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
        resize : false,
        // 只允许选择excel表格文件。


    });
    $("#quxiao").click(function () {
        console.log(fileId+"我进来了");
        $('#'+fileId).empty();
        uploader.reset();
    })
    // 当有文件添加进来的时候
    uploader.on( 'fileQueued', function( file ) {

        fileId= file.id;
        var $li = $(
            '<div id="' + file.id + '" class="file-item thumbnail">' +
            '<img>' +
            '<div class="info">' + file.name + '</div>' +
            '</div>'
            ),

            $img = $li.find('img');

        // $list为容器jQuery实例
        $("#fileList").append( $li );

        // 创建缩略图
        // 如果为非图片文件，可以不用调用此方法。
        // thumbnailWidth x thumbnailHeight 为 100 x 100
        uploader.makeThumb( file, function( error, src ) {

            if ( error ) {
                $img.replaceWith('<span>不能预览</span>');
                return;
            }

            $img.attr( 'src', src );
        }, 100, 100 );
    });
    // 文件上传过程中创建进度条实时显示。
    uploader.on( 'uploadProgress', function( file, percentage ) {
        var $li = $( '#'+file.id ),
            $percent = $li.find('.progress span');

        // 避免重复创建
        if ( !$percent.length ) {
            $percent = $('<p class="progress"><span>正在上传</span></p>')
                .appendTo( $li )
                .find('span');
        }

        $percent.css( 'width', percentage * 100 + '%' );
    });

    // 文件上传成功，给item添加成功class, 用样式标记上传成功。
    uploader.on( 'uploadSuccess', function( file ) {
        $( '#'+file.id ).addClass('upload-state-done');
        console.log("上传成功了");
    });


    // 文件上传失败，显示上传出错。
    uploader.on( 'uploadError', function( file ) {
        var $li = $( '#'+file.id ),

            $error = $li.find('div.error');
        console.log($li);
        // 避免重复创建
        if ( !$error.length ) {
            $error = $('<div class="error"></div>').appendTo( $li );
        }

        $error.text('上传失败');
    });

    // 完成上传完了，成功或者失败，先删除进度条。
    uploader.on( 'uploadComplete', function( file ) {
        $( '#'+file.id ).find('.progress').remove();
    });
    $("#btnSave").click(function () {
        try{
            uploader.getFile(fileId).name
        }catch (e) {
            console.log(e);
            alert("请选择头像");
            $("#filePicker").focus();
            return;
        }
        if( uploader.getFile(fileId).name!=undefined){
            uploader.upload();
        }
    })

</script>


</html>
