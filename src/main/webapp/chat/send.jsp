<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-12
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    form{
        background-color: lightskyblue;
    }
</style>
<body>
<form action="dosend.jsp" method="post">
    <textarea style="width: 100%" rows="5" name="msg"></textarea>
    <input type="submit" value="send">
</form>
</body>
</html>
