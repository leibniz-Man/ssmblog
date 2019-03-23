<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/2/26
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand">吕浩成的个人博客</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath}/blog/tohomepage">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/info/main">博客文章与评论</a></li>
                <li><a href="${pageContext.request.contextPath}/board/toboard">聊天区</a></li>
                <li><a href="${pageContext.request.contextPath}/image/toimage">个人邮箱</a></li>

            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp">注销用户</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">欢迎您！！用户：${user.username}</a></li>
            </ul>
        </div>
    </div>
</nav>

<br>
<br>
<br>
<br>
<br>
<div class="text-center"><h2>${user1.vip}</h2></div>
<form action="${pageContext.request.contextPath}/blog/finduser/${user1.vip}" class="text-center">
    <input class="text-center" type="submit" value="点击刷新所有用户名单">
</form>
<div class="container">
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th colspan=3>
                <h2>用户信息</h2>
            </th>
        </tr>
        <tr>
            <th><h3 style="text-align: center">用户名</h3></th>
            <th><h3 style="text-align: center">密码</h3></th>
            <th><h3 style="text-align: center">注册时ip地址</h3></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${finduser}" var="obj">
            <tr>
                <td style="text-align: center">${obj.username}</td>
                <td style="text-align: center">${obj.password}</td>
                <td style="text-align: center">${obj.ip}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
