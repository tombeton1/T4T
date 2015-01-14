<%-- 
    Document   : Login
    Created on : 9-jan-2015, 20:07:56
    Author     : Tom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Styles.css" rel="stylesheet" type="text/css"/>
        <link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Crafty+Girls' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>

        <div class="topban"></div>
        <div id="logo"><h1>Toys4Toys</h1>
            <h4>Makkelijk ruilen van speelgoed, kleren, boeken voor kinderen </h4></div>
        <div class="topban">

            <nav>
                <ul>
                    <li><a href="Index.jsp">Home</a></li>
                    <li><a href="CatBoekSelecteren">Boeken</a></li>
                    <li><a href="CatBabySelecteren">Baby Spullen</a></li>
                    <li><a href="CatKlerenSelecteren">Kleren</a></li>
                    <li><a href="CatSpeelgoedSelecteren">Speelgoed</a></li>  
                    <li><a href="Login.jsp">Log in</a></li>                   
                </ul>
            </nav>  
        </div>

        <div id="wrapper">
            <h1>Login</h1>
            <form action="LoginRequest" method="POST">
                <table>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Login">
                        </td>
                    </tr>                
                </table>
            </form>
            
             <h1>Of nieuwe gebruiker</h1>
            <form action="PersoonToevoegen" method="POST" role="form">

                <table border="0">               
                    <tbody>
                        <tr>
                            <td>Aanhef</td>
                            <td><input type="text"  name="Aanspreektitel" ></td>
                        </tr>
                        <tr>
                            <td>Voornaam</td>
                            <td><input type="text"  name="Voornaam"></td>
                        </tr>
                        <tr>
                            <td>Familienaam</td>
                            <td><input type="text"  name="Familienaam"></td>
                        </tr>
                        <tr>
                            <td>Woonplaats</td>
                            <td><input type="text"  name="Woonplaats"></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text"  name="Email"></td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td><input type="text"  name="Username"></td>
                        </tr>
                        <tr>
                            <td>Wachtwoord</td>
                            <td><input type="text"  name="Wachtwoord"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Toevoegen" name="Toevoegen"></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </body>



</html>
