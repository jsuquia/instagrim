<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="register.css" >
    </head>
    <body>
        <!-- <nav>
             <ul>
                 
                 <li><a href="/Instagrim/Images/majed">Sample Images</a></li>
             </ul>
         </nav>-->

        <div class="content">

            <form method="POST"  action="Register">

                <div class="center">

                    <div class="back">
                        <a href="/Instagrim">&#10092; back</a>
                    </div>
                    <div class="title">
                        <h1><span style="color: black">Insta</span><span style="color: #696969">Grim</span></h1>
                        <h2>Your world in Black and White</h2>
                    </div>

                    <div class="fullname">
                        <input type="text" ID="firstname" name="firstname" required placeholder="First Name"> 
                        <input type="text" ID="surname" name="surname" required="required" placeholder="Last Name">
                    </div>

                    <div class="username">
                        <input type="text" name="username" pattern="[a-z]{1,15}" required title="Username should only contain lowercase letters. e.g. javier" placeholder="Username">
                    </div>

                    <div class="email">
                        <input type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required ="required" placeholder="Email">
                    </div>

                    <div class="password">
                        <input type="password" name="password" pattern=".{6,15}" required title="Password should have 6 or more characters."  placeholder="Password">
                    </div>

                    <div class="submit">
                        <input type="submit" value="REGISTER"/>
                    </div>

                    <div class="register">
                        <h4>By Signing up, you agree to our</h4>
                        <h4>Terms & Privacy Policy</h4>
                    </div>

                </div> 

            </form>

            <%
                if ((Boolean) request.getAttribute("valid") != null && !(Boolean) request.getAttribute("valid")) {
            %>
            <style>
                .alert {
                    padding: 20px;
                    width: 20%;
                    float: right;
                    background-color: #ff9800;
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
                <strong>Warning!</strong> Username already taken.
            </div>
            <%
                }
            %>      


        </div>
        <!--<footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer> -->
    </body>
</html>
