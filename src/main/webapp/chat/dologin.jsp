<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-12
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <title>Do login</title>
<%
    request.setCharacterEncoding("utf-8");
    String nickname=request.getParameter("nickname");
    session.setAttribute("nickname",nickname);
//    application.setAttribute("nickname",nickname);
    List<String> nicknames= (List<String>) application.getAttribute("nicknames");
    if (nicknames==null){
        nicknames=new ArrayList<String>();
        application.setAttribute("nicknames",nicknames);
    }
    nicknames.add(nickname);

    response.sendRedirect("chat.jsp");
%>
${sessionScope.nickname}
${applicationScope.nicknames}
<script>
    console.log(${applicationScope.nicknames})
    console.log(${nicknames})

</script>