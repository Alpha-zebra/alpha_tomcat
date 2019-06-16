<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-11
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>A</title>
</head>
<body>
<jsp:include page="test_include.jsp"/>
<%@include file="test_include.jsp"%>
<input type="datetime-local" name="time">
<form action="b.jsp" method="post">
    User Name: <input type="text" placeholder="user name" name="userName">
    <input type="checkbox" name="likes" value="运动">运动
    <input type="checkbox" name="likes" value="音乐">音乐
    <input type="checkbox" name="likes" value="艺术">艺术
    <input type="submit" value="submit">
</form>
</body>
</html>
