<%-- 
    Document   : PersoonDetails
    Created on : 7-jan-2015, 17:27:51
    Author     : Eric
--%>

<%@page import="dal.Persoon"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Persoon> persoon = (ArrayList<Persoon>)session.getAttribute("vm");
    
    %>
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
        <title>Persoon - Update</title>
    </head>
    <body style="margin: 15px">
        <h1>Detail</h1>
        <<form method="POST" action="PersoonUpdaten" role="form">
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
            <%                
    for (Persoon p : persoon) {

            %>
            <tr>
                <td> <input type="text" value="<%= p.getAanspreekTitel()%>" name="Aanspreektitel" ></td>
                <td><input type="text" value="<%= p.getVoornaam() %>" name="Voornaam"></td>
                <td><input type="text" value="<%= p.getFamilienaam() %>" name="Familienaam"></td>
                <td><input type="text" value="<%= p.getWoonPlaats() %>" name="Woonplaats"></td>
                <td><input type="text" value="<%= p.getEmail() %>" name="Email"></td>
                <td><input type="text" value="<%= p.getUserName() %>" name="Username"></td>
                <td><input type="text" value="<%= p.getPassWord() %>" name="Wachtwoord"></td>
                <td><input type="submit" value="Updaten" name="Updaten"></td>
            </tr>

            <%  }%>
        </table>
        <br/>
        </form>
        
        <a href="PersonenOverzicht.jsp" class="btn btn-primary btn-sm">Terug naar overzicht</a>
    </body>
    </body>
</html>
