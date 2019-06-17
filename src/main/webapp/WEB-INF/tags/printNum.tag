<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-17
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>

<%@attribute name="value" type="java.lang.Integer" required="true" %>
<%
    for (int i = 1; i <= value; i++) {
        out.print(i);
        out.print("<br/>");
    }
%>