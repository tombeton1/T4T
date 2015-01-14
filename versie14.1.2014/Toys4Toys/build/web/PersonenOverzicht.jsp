<%-- 
    Document   : Personen
    Created on : 18-dec-2014, 14:33:39
    Author     : Tom
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="dal.Persoon"%>
<%@page import="servlets.LijstOpvragen"%>

<%
    ArrayList<Persoon> personen = (ArrayList<Persoon>)session.getAttribute("vm");
    
    %>
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

        <title>Personen</title>
    </head>
    <body style="margin: 15px">
        <h1>Personen</h1>
        <table style="width: 66%" rules="groups" class="table">
            <tr>
                <th>Familienaam</th>
                <th>Voornaam</th>
                <th>Username</th>
                <th>Woonplaats</th>
                <th>Email</th>
            </tr>
            <%                
    for (Persoon p : personen) {
            %>
            <tr>
                <td><%= p.getFamilienaam()%></td>
                <td><%= p.getVoornaam()%></td>
                <td><%= p.getUserName()%></td>
                <td><%= p.getWoonPlaats()%></td>
                <td><%= p.getEmail()%></td>
                
                <td>
                    <a class="btn btn-primary btn-sm" href="PersoonVerwijderen?id=<%=p.getId()%>"> Verwijder </a>
                    <a class="btn btn-primary btn-sm" href="PersoonUpdating?id=<%= p.getId()%>"> Edit </a>
                    
                </td>
            </tr>

            <%  }%>
            
            <tr>
                <td>
                    <a href="PersoonToevoegen.jsp" class=" btn btn-primary btn-sm">Nieuwe persoon toevoegen </a>
                </td>
            </tr>
        </table>
    </body>
</html>
