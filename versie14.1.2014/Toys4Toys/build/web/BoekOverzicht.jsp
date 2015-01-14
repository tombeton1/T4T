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
            <h1>Boeken</h1>
            <form method="POST" action="ZoekBoek">
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
                        <th>Auteur</th>
                        <th>Categorie</th>
                        <th></th>

                    </tr>


                    <%                for (Boeken b : boeken) {
                    %>


                    <tr>
                        <td><%= b.geefPersoon()%></td>
                        <td><%= b.getTitel()%></td>
                        <td><%= b.getAuteur()%></td>
                        <td><%= b.getCategorie()%></td>



                        <td>
                            <a class="btn btn-primary btn-sm" href="BoekDetail?id=<%=b.getId()%>"> <input type="submit" value="Meer info">  </a>
                            <a class="btn btn-primary btn-sm" href="BoekVerwijderen?id=<%=b.getId()%>"> <input type="submit" value="Verwijder"> </a>
                        </td>
                    </tr>

                    <%  }%>
                </table>
                <br/>

                </body>
                </html>
