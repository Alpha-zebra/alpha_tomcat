<%@ page import="jdbc.pojo.Student" %>
<%@ page import="jdbc.dao.StudentDao" %>
<%@ page import="jdbc.dao.StudentDaoImpl" %>
<%@ page import="jdbc.commons.DateUtils" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-14
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    StudentDao dao=new StudentDaoImpl();
    Student student=dao.get(id);
    request.setAttribute("student",student);

%>
<script>
    document.getElementsByName("gender")
</script>
<form action="doUpdateStudent.jsp" method="post">
    id:<input type="hidden" name="id" value="${student.id}">
    name:<input name="name" type="text" value="${student.name}">
    gender:<input name="gender" type="radio" value="男"
       <% if (student.getGender().equals("男")) out.print("checked");%>
        > 男
    <input name="gender" type="radio" value="女"
        <% if (student.getGender().equals("女")) out.print("checked");%>
    > 女
    bornday:<input type="datetime-local" name="bornday" value="
    <%=DateUtils.dateConvertStr(student.getBornday(),"yyyy-MM-dd'T'HH:mm")%>
    ">
    -------------------------------------------------------------------------
    bornday:<input type="datetime-local" name="bornday" value="${student.bornday}">
    <input type="submit" value="submit">
</form>
</body>
</html>
