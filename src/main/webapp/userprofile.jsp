<%-- 
    Document   : userprofile
    Created on : Oct 19, 2016, 10:31:00 AM
    Author     : Javier
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    <%=request.getAttribute("first_name")%>
    <%=request.getAttribute("last_name")%>
    <%=request.getAttribute("email")%>
    </body>
</html>
