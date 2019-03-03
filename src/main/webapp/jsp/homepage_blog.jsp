<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>首页</title>
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

            <%--搜索栏--%>
            <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/info/query/title">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="搜索文章标题关键字" name="title">
                </div>
                <button type="submit" class="btn btn-default">搜索！</button>
            </form>
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
<table class="table table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th colspan=5>
            <h2>文章列表</h2>
            <a href="${pageContext.request.contextPath}/info/tocontent"><button type="button" class="btn btn-info btn-lg btn-block">我也去写文章→</button></a>
        </th>
    </tr>
    <tr>
        <%--<th>文章编号</th>--%>
        <th>文章创作日期</th>
        <th>文章内容</th>
        <th>文章作者</th>
        <th>文章标题</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${blogInfo}" var="obj">
        <tr>
            <td><fmt:formatDate value="${obj.createDate}"></fmt:formatDate></td>
            <%--<td class="danger" style="text-align: center"><h2>${obj.id}</h2></td>--%>
            <td class="success">${obj.title}</td>
            <td>${obj.content}</td>
            <td class="info" style="text-align: center"><h3>${obj.writer}</h3></td>
            <td>
                <a href="${pageContext.request.contextPath}/comment/query/blogid/${obj.id}">查看评论</a>
                <a href="${pageContext.request.contextPath}/info/vip/addcomment/${obj.id}">评论</a>
                <a href="${pageContext.request.contextPath}/info/deleteinfo/${obj.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>


</body>
</html>
