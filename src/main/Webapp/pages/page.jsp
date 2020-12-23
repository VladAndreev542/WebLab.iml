<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello JSP</title>
    <style>
        @import "../styles/main.css" screen;
    </style>
</head>
<body>
<h2>This JSP!!!</h2>

<%@ page import = "java.util.Date" %>
<%@ page import="logic.DentistryLogic" %>
<%Date now = new Date();%>
<%=now%>
<%
    String name = (String)session.getAttribute("current_user");
    if(name != null){
        out.println("<div><b>Hello, " + name + "</b></div>");
    }
%>

<%
    for(int i = 0;i<10;i++){
        out.println("<p>Number from JSP " + i + "</p>");
    }
%>
<%
    DentistryLogic bl = new DentistryLogic();
    out.println("<div><b>" + bl.getString() + "</b></div>");
%>
</body>
</html>