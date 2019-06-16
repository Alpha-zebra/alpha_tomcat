<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-12
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="refresh" content="1;users.jsp">
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--nicknames:--%>
<%--${applicationScope.nicknames}--%>
<%--------------------------------%>
<%--<script>--%>
<%--console.log(${applicationScope.nicknames})--%>
<%--</script>--%>
<%--<%--%>
<%--List<String> nicknames= (List<String>) application.getAttribute("nicknames");--%>

<%--%>--%>
-------------------------------------------->
<c:if test="${not empty applicationScope.nicknames}">
    <c:forEach items="${applicationScope.nicknames}" var="nickname" varStatus="st">
        <li>${nickname}</li>
    </c:forEach>
</c:if>
-------------------------------------------->
<c:if test="${not empty applicationScope.nicknames}">
    <c:forEach items="${applicationScope.nicknames}" var="nickname" varStatus="st">
        <li>${nickname}</li>
    </c:forEach>
</c:if>
-------------------------------------------->
<c:if test="${not empty applicationScope.nicknames}">
    <c:forEach items="${applicationScope.nicknames}" var="nickname" varStatus="st">
        <li>${nickname}</li>
    </c:forEach>
</c:if>
-------------------------------------------->

</body>
</html>
