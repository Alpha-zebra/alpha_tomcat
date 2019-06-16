<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-12
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="refresh" content="1;msgs.jsp">
<html>
<head>
    <title>Msg</title>
</head>
<body>
<style>
    ul{
        background-color: lightskyblue;
    }
</style>
<ul>
    <c:if test="${not empty applicationScope.msgs}">
        <c:forEach items="${applicationScope.msgs}" var="msg" varStatus="st">
            <li>${msg}</li>
            -----------------------------------------------------------------
        </c:forEach>
    </c:if>
</ul>
</body>
</html>
