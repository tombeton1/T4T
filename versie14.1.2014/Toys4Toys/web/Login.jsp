<%-- 
    Document   : Login
    Created on : 9-jan-2015, 20:07:56
    Author     : Tom
--%>
<%@include file="/Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body>
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

                <table>               
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
