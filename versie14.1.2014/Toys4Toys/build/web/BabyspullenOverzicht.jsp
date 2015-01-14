<%-- 
    Document   : BabyspullenOverzicht
    Created on : 26-dec-2014, 16:53:04
    Author     : Eric
--%>

<%@page import="dal.Persoon"%>
<%@page import="dal.Babyspullen"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Babyspullen> baby = (ArrayList<Babyspullen>) session.getAttribute("vm");
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
            <h1>Baby Spullen</h1>
            <form method="POST" action="ZoekBaby">
                <div>
                    <input type="text" name="zoekTerm">
                    <input type="submit" value="Zoek" name="zoek">

                    </form>
                    <br/>
                    <br/>
                </div>
                <table>
                    <tr>
                        <th>Aangeboden</th>
                        <th>Titel</th>
                        <th>Omschrijving</th>
                        <th>Geslacht</th>
                        <th></th>
                    </tr>

                    <%
                        for (Babyspullen ba : baby) {
                    %>

                    <tr>
                        <td><%=ba.geefPersoon()%></td>
                        <td><%= ba.getTitel()%></td>
                        <td><%= ba.getCategorie()%></td>
                        <td><%
                            Boolean b = ba.getGeslacht();
                            // 0=V=false, 1=M=true
                            if (b) {
                            %>M<%
                            } else {%> V <%}

                            %></td>

                        <td>
                            <a class="btn btn-primary btn-sm" href="BabyDetail?id=<%=ba.getId()%>"><input type="submit" value="Meer info"> </a>
                            <a class="btn btn-primary btn-sm" href="BabyVerwijderen?id=<%=ba.getId()%>"> <input type="submit" value="Verwijder"> </a>

                        </td>
                    </tr>

                    <%  }%>
                </table>
                <br/>
                </body>
                </html>
