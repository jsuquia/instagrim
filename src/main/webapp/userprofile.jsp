<%-- 
    Document   : userprofile
    Created on : Oct 19, 2016, 10:31:00 AM
    Author     : Javier
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link rel="stylesheet" type="text/css" href="Login.css" >
    </head>
    
    <header>
        <div class="title">
            <h1><span style="color: black">Insta</span><span style="color: #696969">Grim</span></h1>
            <h2>Your world in Black and White</h2>
        </div>

        <ul>
            <li class="home"><a href="/Instagrim/Main">Home</a></li>
            <li><a href="/Instagrim/Upload">Upload</a></li>
                <%

                    LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                    if (lg != null) {
                        String UserName = lg.getUsername();
                        if (lg.getlogedin()) {
                        }
                    }
                %>

            <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
            <li><a class="current">Profile</a></li>
            <li><a href="/Instagrim/Logout">Logout</a></li>


        </ul>
    </header>
    
    <body>
        <br>
        <h3>First Name</h3>
        <div class="details">--> <%=request.getAttribute("first_name")%></div>
        <h3>Last Name</h3>
        <div class="details">--> <%=request.getAttribute("last_name")%></div>
        <h3>Email</h3>
        <div class="details">--> <%=request.getAttribute("email")%></div>
    </body>
</html>
