<%@ page import="jdbc.pojo.Student" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-17
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>custom tag</title>

</head>
<body>
<%
    Student student1 = (Student) request.getAttribute("student2");
    if (student1 == null) {
        student1=new Student();
        request.setAttribute("student2",student1);
    }
    student1.setName("alpha");
%>
<jsp:setProperty name="student2" property="name" value="Alpha"/>
<jsp:useBean id="student2" class="jdbc.pojo.Student" scope="request"/>
<%=student2.getName()%>
<jsp:getProperty name="student2" property="name"/>
<br/>
<my:printNum value="10"></my:printNum>
</body>
</html>
