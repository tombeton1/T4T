<%-- 
    Document   : Personen
    Created on : 18-dec-2014, 14:33:39
    Author     : Tom
--%>
<%@include file="/Header.jsp" %>
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
    </head>
    <body>
        <h1>Personen</h1>
        <table>
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
                    <a class="btn btn-primary btn-sm" href="PersoonUpdating?id=<%= p.getId()%>"> Pas mijn profiel aan </a>                    
                </td>
            </tr>

            <%  }%>
        </table>
    </body>
</html>
