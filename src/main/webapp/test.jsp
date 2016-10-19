<%-- 
    Document   : test
    Created on : Sep 29, 2014, 9:16:48 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Login.css">
    </head>
    
    <header>
        <div class="title">
            <h1><span style="color: black">Insta</span><span style="color: #696969">Grim</span></h1>
            <h2>Your world in Black and White</h2>
        </div>

        <ul>
            <li class="home"><a href="/Instagrim">Home</a></li>
            <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
            <li><a href="upload.jsp">Upload</a></li>
                <%

                    LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                    if (lg != null) {
                        String UserName = lg.getUsername();
                        if (lg.getlogedin()) {
                        }
                    }
                %>

            <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
            <li><a href="/Instagrim/Profile">Profile</a></li>
            <li><a href="/Instagrim/Logout">Logout</a></li>


        </ul>
    </header>
    
    <body>
        <h1>Hello World!</h1>
        <%
            Pic ps = new Pic();
            LoggedIn lg = new LoggedIn();
            %>
    </body>
</html>
