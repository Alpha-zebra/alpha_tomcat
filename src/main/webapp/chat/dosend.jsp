<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-06-12
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String msg=request.getParameter("msg");
    String nickname= (String) session.getAttribute("nickname");
    msg=nickname+"--say-->:"+msg;

    List<String> msgs= (List<String>) application.getAttribute("msgs");
    if (msgs==null){
        msgs=new ArrayList<String>();
        application.setAttribute("msgs",msgs);
    }
    msgs.add(msg);

    response.sendRedirect("send.jsp");
%>