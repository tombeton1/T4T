<%-- 
    Document   : PersoonDetails
    Created on : 7-jan-2015, 17:27:51
    Author     : Véronique
--%>
<%@include file="/Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body style="margin: 15px">
        <h1>Detail</h1>
        <form action="PersoonToevoegen" method="POST">
        <table>
            <tr>
                <th>Aanhef</th>
                <th>Voornaam</th>
                <th>Familienaam</th>
                <th>Woonplaats</th>
                <th>Email</th>
                <th>Username</th>
                <th>Wachtwoord</th>
                <th></th>
            </tr>
            <tr>
                <td><input required="true" type="text"  name="Aanspreektitel" ></td>
                <td><input type="text"  name="Voornaam"></td>
                <td><input required="true" type="text"  name="Familienaam"></td>
                <td><input type="text"  name="Woonplaats"></td>
                <td><input required="true" type="text"  name="Email"></td>
                <td><input required="true" type="text"  name="Username"></td>
                <td><input required="true" type="text"  name="Wachtwoord"></td>
                <td><input type="submit" value="Toevoegen" name="Toevoegen"></td>
            </tr>

        </table>
        <br/>
        </form>
        
        <a href="PersonenOverzicht.jsp" class="btn btn-primary btn-sm">Terug naar overzicht</a>
    </body>
</html>
