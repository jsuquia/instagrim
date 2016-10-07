<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="header">
            <h1>InstaGrim ! </h1>
            <h2>Your world in Black and White</h2>
        </div>
        
        <div class="content">
            
            <div class="center">
                
                <div class="username">
                    <div class="fontawesome-user" for="login__username"><span class="hidden"></span></div>
                    <input type="text" name="username">
                </div>

                <div class="password">
                    <label class="fontawesome-lock" for="login__password"><span class="hidden"></span></label>
                    <input type="password" name="password">
                </div>

                <div class="submit">
                    <input type="submit" value="Sign In">
                </div>
            
            </div> 
            
        </div>
        
        <div class="footer">
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <li>&COPY; Andy C</li>
            </ul>
        </div>
        
        <!--
        <nav>
            <ul>

               
                <li><a href="upload.jsp">Upload</a></li>
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>

                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <li><a href="/Instagrim/Logout">Logout</a></li>
                    <%}
                            }else{
                                %>
                
                 <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <%
                                        
                            
                    }%>
            </ul>
        </nav> -->
       <!-- <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <li>&COPY; Andy C</li>
            </ul>
        </footer> -->
    </body>
</html>
