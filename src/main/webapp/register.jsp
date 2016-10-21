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

            
        </div>
        <!--
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                </ul>
                <br/>
                <input type="submit" value="Regidter"> 
            </form>

        </article>-->
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
