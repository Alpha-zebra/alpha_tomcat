<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-14
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>
<html>
<head>
    <title>add Student</title>
</head>
<body>
<%--<%--%>
    <%--request.setCharacterEncoding("utf-8");--%>
<%--%>--%>
<form action="doaddStudent.jsp" method="post">
    name:<input name="name" type="text">
    sex:<input name="gender" type="radio" value="男"> 男
        <input name="gender" type="radio" value="女"> 女
    bornday:<input type="datetime-local" name="bornday">
    <input type="submit" value="submit">
</form>
</body>
</html>
