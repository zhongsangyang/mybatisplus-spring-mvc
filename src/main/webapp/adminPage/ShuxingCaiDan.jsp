<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/13
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="jquery-1.8.3.min.js"></script>
</head>
<body>

<script type="text/javascript">
    $(function () {
        var menuArry = [
            { id: 1, name: "办公管理", pid: 0 },
            { id: 2, name: "请假申请", pid: 1 },
            { id: 3, name: "出差申请", pid: 1 },
            { id: 4, name: "请假记录", pid: 2 },
            { id: 5, name: "系统设置", pid: 0 },
            { id: 6, name: "权限管理", pid: 5 },
            { id: 7, name: "用户角色", pid: 6 },
            { id: 8, name: "菜单设置", pid: 6 },
        ];

        GetData(0, menuArry)
        $("body").append(menus);
    });

    //菜单列表html
    var menus = '';

    //根据菜单主键id生成菜单列表html
    //id：菜单主键id
    //arry：菜单数组信息
    function GetData(id, arry) {
        var childArry = GetParentArry(id, arry);
        if (childArry.length > 0) {
            menus += '<ul>';
            for (var i in childArry) {
                menus += '<li>' + childArry[i].name;
                GetData(childArry[i].id, arry);
                menus += '</li>';
            }
            menus += '</ul>';
        }
    }

    //根据菜单主键id获取下级菜单
    //id：菜单主键id
    //arry：菜单数组信息
    function GetParentArry(id, arry) {
        var newArry = new Array();
        for (var i in arry) {
            if (arry[i].pid == id)
                newArry.push(arry[i]);
        }
        return newArry;
    }
</script>
</body>
</html>>