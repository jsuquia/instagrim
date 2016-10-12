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
        <link rel="stylesheet" type="text/css" href="Styles.css" >
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
                        <h1>InstaGrim ! </h1>
                        <h2>Your world in Black and White</h2>
                    </div>
                    
                    <div class="username">
                        <div class="fontawesome-user" for="login__username"></div>
                        <input type="text" name="username">
                    </div>

                    <div class="password">
                        <label class="fontawesome-lock" for="login__password"></label>
                        <input type="password" name="password">
                    </div>

                    <div class="submit">
                        <input type="submit" value="REGISTER">
                    </div>
                    
                    <div class="register">
                        <h3>By Signing up, you agree to our</h3>
                        <h3>Terms & Privacy Policy</h3>
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
