<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/2/24
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>写博客</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
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
                <li><a href="email_nei.jsp">个人邮箱</a></li>

            </ul>

            <%--搜索栏--%>
            <%--<form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/info/query/title">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="搜索文章标题关键字" name="title">
                </div>
                <button type="submit" class="btn btn-default">搜索！</button>
            </form>--%>
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
<form class="form-inline row" action="${pageContext.request.contextPath}/info/add/content">
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
        <%--<tr>
            <td><h2>文章编号:</h2></td>
            <td>
                <input type="number" name="id" placeholder="请创建一个文章编号">
            </td>
        </tr>--%>
        <tr>
            <td><h2>文章题目:</h2></td>
            <td>
                <input type="text" name="title">
            </td>
        </tr>
        <tr>
            <td><h2>评论内容</h2></td>
            <td>
                <textarea name="content" class="form-control" rows="16" style="min-width: 60%"></textarea>
            </td>
        </tr>
        <tr>
            <td><h2>作者:</h2></td>
            <td>
                <input type="text" name="writer">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="提交" class="btn btn-primary btn-lg active">
            </td>
        </tr>
        </tbody>
    </table>
</form>
</div>
</body>
</html>
