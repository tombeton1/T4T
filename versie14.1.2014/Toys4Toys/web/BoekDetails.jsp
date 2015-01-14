<%-- 
    Document   : BoekDetails
    Created on : 4-jan-2015, 17:00:49
    Author     : Eric
--%>

<%@page import="dal.Boeken"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Boeken> boeken = (ArrayList<Boeken>) session.getAttribute("vm");

%>
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
        <div class="topban"></div>
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


        <div id="wrapper">
            <h1>Detail</h1>

            <table style="text-align:left; padding: 2px;">
                <%                           for (Boeken b : boeken) {
                %>
                <tbody>
                    <tr>
                        <td>Aangeboden door</td>
                        <td><%= b.geefPersoon()%></td>
                    </tr>
                    <tr>
                        <td>Titel</td>
                        <td><%= b.getTitel()%></td>
                    </tr>
                    <tr>
                        <td>Afbeelding</td>
                        <td><img src="<%= b.getBoekenFoto()%>"</td>
                    </tr>
                    <tr>
                        <td>Auteur</td>
                        <td><%= b.getAuteur()%></td>
                    </tr>
                    <tr>
                        <td>Uitgeverij</td>
                        <td><%= b.getUitgeverij()%></td>
                    </tr>
                    <tr>
                        <td>Categorie</td>
                        <td><%= b.getCategorie()%></td>
                    </tr>
                    <tr>
                        <td>Omschrijving</td>
                        <td><%= b.getOmschrijving()%></td>
                    </tr>

                </tbody>
            </table>
            <%  }%>


        </div>
    </body>

</html>
