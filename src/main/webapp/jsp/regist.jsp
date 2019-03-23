<%--
  Created by IntelliJ IDEA.
  User: AERO
  Date: 2019/2/21
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">个人博客网站</span>
                <span class="icon-bar">登录</span>
                <span class="icon-bar">注册</span>
            </button>
            <a class="navbar-brand" href="index.jsp">吕浩成的个人博客</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="login.jsp">登录<span class="sr-only">(current)</span></a></li>
                <li class="active"><a href="regist.jsp">注册</a></li>
                <li><a href="message_board_wai.jsp">留言板<small>(无需登录即可使用)</small></a></li>
                <li><a href="email_wai.jsp">个人邮箱<small>(登录后可使用)</small></a></li>
            </ul>

            <%--搜索栏--%>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">搜索！</button>
            </form>
            <%--<ul class="nav navbar-nav navbar-right">
                <li><a href="#">联系制作人</a></li>
            </ul>--%>
        </div>
    </div>
</nav>
<h1 class="text-center">注册页</h1>
<br>
<br>
<br>
<br>
<br>
<form class="form-horizontal" action="${pageContext.request.contextPath}/blog/regist" method="post">
    <div class="form-group">
        <label  class="col-sm-5 control-label">用户名:</label>
        <div class="col-sm-2">
            <input type="text" class="form-control"  placeholder="请输入用户名" name="username">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-5 control-label">密码:</label>
        <div class="col-sm-2">
            <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码" name="password">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-5 col-sm-1">
            <button type="submit" class="btn btn-success" id="rigist1">点击注册！</button>
        </div>
    </div>
</form>
<script>
    var regist1=document.getElementById('rigist1');
    regist1.onclick=function(){
        alert("正在注册....")
    }
</script>
</body>
</html>
