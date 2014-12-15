<%-- 
    Document   : index
    Created on : 15-dec-2014, 15:49:11
    Author     : Tom
--%>
<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Toys4Toys View</title>
    </head>
    <body>
        <h1>Toys4Toys View</h1>
        <%!
            public class Persoon {

                String Url = "jdbc:mysql://localhost:3307/toys4toysdb";
                String UserName = "root";
                String PassWord = "usbw";

                Connection conn = null;
                PreparedStatement selectPersoon = null;
                ResultSet resultSet = null;

                public Persoon() {
                    try {
                        conn = DriverManager.getConnection(Url, UserName, PassWord);

                        selectPersoon = conn.prepareStatement(
                                "SELECT AanspreekTitel,Voornaam, Familienaam, Email, WoonPlaats FROM Persoon");
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }

                public ResultSet getPersoon() {
                    try {
                        resultSet = selectPersoon.executeQuery();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    return resultSet;
                }
            }
        %>
        <%
            Persoon persoon = new Persoon();
            ResultSet personen = persoon.getPersoon();
        %>
        <table border="1">
            <tbody>
                <tr>
                    <td>Aanspreek Titel</td>
                    <td>Voornaam</td>
                    <td>Familienaam</td>
                    <td>Email</td>
                    <td>Woonplaats</td>
                </tr>
                <% while(personen.next()) {%>
                <tr>
                    <td><%= personen.getString("AanspreekTitel")%></td>
                    <td><%= personen.getString("Voornaam")%></td>
                    <td><%= personen.getString("Familienaam")%></td>
                    <td><%= personen.getString("Email")%></td>
                    <td><%= personen.getString("WoonPlaats")%></td>
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
