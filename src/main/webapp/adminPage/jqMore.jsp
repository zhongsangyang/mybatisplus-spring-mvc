<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/13
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=path%>/resources/bootstrap/js/jquery-2.0.3.min.js"></script>
    <link rel="stylesheet" href="<%=path%>/resources/bootstrap/css/fileinput.min.css">
    <script type="text/javascript" src="<%=path%>/resources/bootstrap/js/fileinput.min.js"></script>
    <script type="text/javascript" src="<%=path%>/resources/bootstrap/js/fileinput_locale_zh.js"></script>

</head>
<body>
    <div class="row" style="height: 500px">
        <input id="file-Portrait1" type="file">
    </div>
<script>

    function initPortrait(ctrlName, id) {
        var control = $('#' + ctrlName);
        var imageurl = '/PictureAlbum/GetPortrait?id=' + id + '&r=' + Math.random();
        //重要，需要更新控件的附加参数内容，以及图片初始化显示
        control.fileinput('refresh', {
            uploadExtraData: { id: id }, initialPreview: [

        "<img src='" + imageurl + "' class='file-preview-image' alt='肖像图片' title='肖像图片'>",                 ],             });         }
</script>
</body>
</html>
