<%-- 
    Document   : PersoonDetails
    Created on : 7-jan-2015, 17:27:51
    Author     : Eric
--%>

<%@include file="/Header.jsp" %>
<%@page import="dal.Persoon"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Persoon> persoon = (ArrayList<Persoon>)session.getAttribute("vm");   
    %>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <div id="wrapper">
        <h1>Pas uw persoonlijke informatie aan</h1>
        <form method="POST" action="PersoonUpdaten">
            <table style="width: auto;">
            <%                
    for (Persoon p : persoon) {

            %>
            <tr>
                <td>Aanhef: </td>
                            <td><select name="Aanspreektitel">
                                    <option value='Dhr.' name="Aanspreektitel">Dhr.</option>
                                    <option value='Mevr.' name="Aanspreektitel">Mvr.</option>
                                    <option value='Mej.' name="Aanspreektitel">Mej.</option>
                                </select>
                            </td>
            </tr>
            <tr>
                <td>Voornaam:</td>
                <td><input type="text"  name="Voornaam" value="<%=p.getVoornaam() %>"></td>
            </tr>
            <tr>
                <td>Familienaam:</td>
                <td><input required="true" type="text"  name="Familienaam" value="<%=p.getFamilienaam() %>"></td>
            </tr>
            <tr>
                <td>Woonplaats:</td>
                <td><input type="text"  name="Woonplaats" value="<%=p.getWoonPlaats() %>"></td>
            </tr>
            <tr>
                <td>E-mailadres:</td>
                <td><input required="true" type="text"  name="Email" value="<%=p.getEmail() %>"></td>
            </tr>
            <tr>
                <td>Username:</td>
                <td><input required="true" type="text"  name="Username" value="<%=p.getUserName() %>"></td>
            </tr>
            <tr>
                <td>Wachtwoord:</td>
                <td><input required="true" type="text"  name="Wachtwoord" value="<%=p.getPassWord() %>"></td>
            </tr>
            <tr> 
                <td><input type="submit" value="Updaten" name="Aanpassen"></td>
                <td><input type="hidden" name="id" value="<%= p.getId() %>"></td>
            </tr>

            <%  }%>
        </table>
        <br/>
        </form>
        </div>
    </body>
</html>
