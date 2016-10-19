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
        <!--<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">-->
        <link rel="stylesheet" type="text/css" href="Login.css" >

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
        <div class="slideshow-container">
            <div class="mySlides fade">
                <img src="img3.jpg" style="width:100%">
            </div>

            <div class="mySlides fade">
                <img src="img4.jpg" style="width:100%">
            </div>

            <div class="mySlides fade">
                <img src="img5.jpg" style="width:100%">
            </div>

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>

        <script>
            var slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
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
