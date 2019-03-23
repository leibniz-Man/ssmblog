<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/3/23
  Time: 8:09
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
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
    </script>
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
                <li><a href="${pageContext.request.contextPath}/blog/tohomepage">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/info/main">博客文章与评论</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/board/toboard" id="btn">聊天室</a></li>
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
<div class="container" id="index">
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th colspan=5>
                <h2 class="text-center">聊天室</h2>
            </th>
        </tr>
        <tr>
            <th>用户</th>
            <th>发表时间</th>
            <th>消息内容</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${blogboard}" var="obj">
            <tr>
                <td class="success">${obj.username}</td>
                <td><fmt:formatDate value="${obj.date}"></fmt:formatDate></td>
                <td class="success">${obj.message}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="jumbotron" id="input">
        <form class="form-inline  col-sm-offset-4" action="${pageContext.request.contextPath}/board/insertmessage/${user.username}" id="input2">
            <div class="form-group">
                <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
                <div class="input-group">
                    <div class="input-group-addon glyphicon glyphicon-bell"></div>
                    <input type="text" class="form-control" id="exampleInputAmount" name="message">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">发送</button>
        </form>
    </div>
</div>
<script>
    $(function(){
        timer=setInterval(function(){
            var buy = document.getElementById('btn');
            buy.click();
        },500)
    });
    $("#input2").mouseenter(function(){
        $(function(){
            clearInterval(timer);
        });
    });
    $("#input").mouseleave(function(){
        $(function(){
            timer=setInterval(function(){
                var buy = document.getElementById('btn');
                buy.click();
            },500)
        });
    });
</script>
</body>
</html>
