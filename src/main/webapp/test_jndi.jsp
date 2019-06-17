<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-17
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test JNDI</title>
</head>
<body>
<%
    Context cxt = new InitialContext();
    DataSource ds = (DataSource) cxt.lookup("java:comp/env/alpha/ssm_p");
    out.print(ds);
%>
</body>
</html>
