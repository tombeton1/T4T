<%-- 
    Document   : PersoonDetails
    Created on : 7-jan-2015, 17:27:51
    Author     : Véronique
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <title>Persoon - Toevoegen</title>
    </head>
    <body style="margin: 15px">
        <h1>Detail</h1>
        <form actio="PersoonToevoegen" method="POST" role="form">
        <table style="width: 66%" rules="groups" class="table">
            <tr>
                <th>Aanhef</th>
                <th>Voornaam</th>
                <th>Familienaam</th>
                <th>Woonplaats</th>
                <th>Email</th>
                <th>Username</th>
                <th>Wachtwoord</th>
            </tr>
            <tr>
                <td><input type="text"  name="Aanspreektitel" ></td>
                <td><input type="text"  name="Voornaam"></td>
                <td><input type="text"  name="Familienaam"></td>
                <td><input type="text"  name="Woonplaats"></td>
                <td><input type="text"  name="Email"></td>
                <td><input type="text"  name="Username"></td>
                <td><input type="text"  name="Wachtwoord"></td>
                
                <td><td><input type="submit" value="Toevoegen" name="Toevoegen"></td></td>
            </tr>

        </table>
        <br/>
        </form>
        
        <a href="PersonenOverzicht.jsp" class="btn btn-primary btn-sm">Terug naar overzicht</a>
    </body>
</html>
