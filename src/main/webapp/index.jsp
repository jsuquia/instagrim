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
        <link rel="stylesheet" type="text/css" href="Index.css">
    </head>
    <body>

        <div class="content">

            <form method="POST"  action="Main">

                <div class="center">

                    <div class="title">
                        <h1><span style="color: black">Insta</span><span style="color: #696969">Grim</span></h1>
                        <h2>Your world in Black and White</h2>
                    </div>

                    <div class="username">
                        <div class="fontawesome-user" for="login__username"></div>
                        <input type="text" name="username" required="required" placeholder="Username">
                    </div>

                    <div class="password">
                        <label class="fontawesome-lock" for="login__password"></label>
                        <input type="password" name="password" pattern=".{6,15}" required title="Password should have 6 or more characters." placeholder="Password">
                    </div>

                    <div class="submit">
                        <input type="submit" value="LOGIN">
                    </div>

                    <div class="register">
                        <h3>Not a member? <a href="/Instagrim/Register">Sign up now!</a></h3>
                    </div>

                </div> 

            </form>


        </div>

        <!--<div class="footer">
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <li>&COPY; Andy C</li>
            </ul>
        </div>-->

        <%
            if ((Boolean) request.getAttribute("check") != null) {
        %>
        <style>
            .alert {
                padding: 20px;
                background-color: #ff9800;
                width: 25%;
                float: right;
                border-radius: .25rem;
                color: white;
            }

            .closebtn {
                margin-left: 15px;
                color: white;
                font-weight: bold;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;
            }

            .closebtn:hover {
                color: black;
            }
        </style>

        <div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display = 'none';">&times;</span>
            <strong>Warning!</strong> Incorrect username and/or password.
        </div>
        <%
            }
        %>   
    </body>
</html>
