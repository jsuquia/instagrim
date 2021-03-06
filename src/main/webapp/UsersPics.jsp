<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Login.css" >
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

            <li><a class="current">Your Images</a></li>
            <li><a href="/Instagrim/Profile">Profile</a></li>
            <li><a href="/Instagrim/Logout">Logout</a></li>


        </ul>
    </header>

    <article>
        <h1 class="margin">Your Pics</h1>
        <%
            java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
            if (lsPics == null) {
        %>
        <p class="margin">No Pictures found</p>
        <%
        } else {
            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();

        %>   

        <style>
            .delete {
                margin-left: 15px;
                color: grey;
                font-weight: bold;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;
            }

            .delete:hover {
                color: black;
            }
        </style>
        
        <div class="layout">
                
            <span class="delete" onclick="this.parentElement.style.display = 'none';" >&times;</span> <!-- not proper way of deleting a picture -->
            <a href="/Instagrim/Image/<%=p.getSUUID()%>"><img class="grid" src="/Instagrim/Thumb/<%=p.getSUUID()%>"></a>
                
            </div>


        <%

                }
            }
        %>
    </article>

    <!--<footer>
        <ul>
            <li class="footer"><a href="/Instagrim">Home</a></li>
        </ul>
    </footer>
</body>
</html>
