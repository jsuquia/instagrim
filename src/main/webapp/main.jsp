<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Login.css">
    </head>


    <body>
        <header>
            <div class="title">
                <h1><span style="color: black">Insta</span><span style="color: #696969">Grim</span></h1>
                <h2>Your world in Black and White</h2>
            </div>

            <ul>
                <li class="home"><a class="current">Home</a></li>
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
                <li><a href="/Instagrim/Profile">Profile</a></li>
                <li><a href="/Instagrim/Logout">Logout</a></li>

            </ul>
        </header>

        <div class='fill-screen'>
            <!--<img class='make-it-fit' src="main.jpg">-->
        </div>        
    </body>


    <!--
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    
    <!--        
    <footer>
        <ul>
            <li class="footer"><a href="/Instagrim">Home</a></li>
        </ul>
    </footer>-->
</html>
