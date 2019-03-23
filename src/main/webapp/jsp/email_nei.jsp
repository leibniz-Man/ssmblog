<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/3/23
  Time: 8:10
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
<style>
    image{
        max-width: 800px;
        height: auto;
    }
</style>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand">吕浩成的个人博客</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/blog/tohomepage">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/info/main">博客文章与评论</a></li>
                <li><a href="${pageContext.request.contextPath}/board/toboard">聊天区</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/image/toimage">个人邮箱</a></li>

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
<h1 class="text-center">图片上传</h1>
<br>
<div class="container">
    <form action="${pageContext.request.contextPath}/image/save" method="post" enctype="multipart/form-data">
        <span>图片:</span><input type="file" name="file"><br>
        <span>说明:</span><input type="text" class="form-control" name="imagecontent">
        <input type="submit" value="提交">
    </form>
    <a href="${pageContext.request.contextPath}/image/listImages"><button type="button" class="btn btn-info btn-lg btn-block">显示图片</button></a>
    <br>
    <hr>
    <br>
    <c:forEach items="${lists}" var="image">
        <div class="row">
            <div class="col-sm-6 col-md-12">
                <div class="thumbnail">
                    <c:if test="${image.id != null}">
                        <img alt="" src="/upload/${image.upimage}" id="images">
                    </c:if>
                    <hr>
                    <div class="caption">
                        <h3><span>图片编号:</span>${image.id}</h3>
                        <p>${image.imagecontent}</p>
                        <p>
                            <button type="button" class="btn btn-success btn-lg btn-block">提交</button>
                            <button type="button" class="btn btn-danger btn-lg btn-block">取消</button>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
