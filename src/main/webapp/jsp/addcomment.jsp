<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/2/23
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="homepage_blog.jsp">吕浩成的个人博客</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath}/blog/tohomepage">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/info/main">博客文章与评论</a></li>
                <li><a href="#">占位</a></li>
                <li><a href="#">占位</a></li>

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
<div class="container">
<form action="${pageContext.request.contextPath}/info/addcomment">
<table class="table table-striped table-bordered table-hover">
    <thead>
        <tr>
            <th colspan="2">
                <h2>增加评论</h2>
            </th>
        </tr>
    </thead>
    <input type="hidden" name="blogInfo.id" value="${blogid}">
    <tbody>
        <tr>
            <td><h2>评论内容</h2></td>
            <td>
                <textarea name="usercontent" class="form-control" rows="16" style="min-width: 60%"></textarea>
            </td>
        </tr>
        <tr>
            <td><h2>评论人</h2></td>
            <td>
                <input type="text" name="author">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="提交" class="btn btn-primary btn-lg active" id="submit1">
                <input type="button" value="返回" class="btn btn-default btn-lg active">
            </td>
        </tr>
    </tbody>
</table>
</form>

    <script>
        var submit1=document.getElementById('submit1');
        submit1.onclick=function () {
            alert("增加评论成功！点击返回")
        }
    </script>
</div>
</body>
</html>
