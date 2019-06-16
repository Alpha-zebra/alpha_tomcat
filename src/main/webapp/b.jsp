<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-11
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%--<%@taglib prefix="c" uri="" %>--%>
<html>
<head>
    <title>B</title>
</head>
<body>

<%
    request.setCharacterEncoding("utf-8");
%>
${userName.value}
<br>

<%=request.getParameter("userName")%>
<%
    String[] likes=request.getParameterValues("likes");
    for (String like:likes){
        %>
<div><% out.print(like);%></div>
<%
    }
%>
</body>
</html>
