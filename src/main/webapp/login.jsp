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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="Login.css" >
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <style>
            .mySlides {display:none}
            .w3-left, .w3-right, .w3-badge {cursor:pointer}
            .w3-badge {height:13px;width:13px;padding:0}
        </style>
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
        <div class="w3-content w3-display-container" ID="images" style="max-width: 100%" style="max-height: 100%">
            <img class="mySlides" src="img4.jpg">
            <img class="mySlides" src="img5.jpg">
            <img class="mySlides" src="img3.jpg">
            <div class="w3-center w3-section w3-large w3-text-white w3-display-bottomleft" style="width:100%">
                <div class="w3-left w3-padding-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
                <div class="w3-right w3-padding-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
            </div>
        </div>

        <script>
            var slideIndex = 1;
            showDivs(slideIndex);

            function plusDivs(n) {
                showDivs(slideIndex += n);
            }

            function currentDiv(n) {
                showDivs(slideIndex = n);
            }

            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                if (n > x.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = x.length
                }
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" w3-white", "");
                }
                x[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " w3-white";
            }
        </script>


    </body>

    <!--        
    <footer>
        <ul>
            <li class="footer"><a href="/Instagrim">Home</a></li>
        </ul>
    </footer>-->
</html>
