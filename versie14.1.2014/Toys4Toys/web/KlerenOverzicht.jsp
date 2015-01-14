<%@page import="dal.Kleren"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Kleren> kleren = (ArrayList<Kleren>) session.getAttribute("vm");
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


        <div id="logo"><h1>Toys4Toys</h1>
            <h4>Makkelijk ruilen van speelgoed, kleren, boeken voor kinderen </h4></div>

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
            <h1>Kleren</h1>
            <form method="POST" action="ZoekKleren">
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
                        <td>Soort kledij</td>
                        <th>Geslacht</th>
                        <th>Maat</th>
                        <th></th>
                    </tr>


                    <%
                        for (Kleren k : kleren) {
                    %>

                    <tr>
                        <td><%= k.geefPersoon()%></td>
                        <td><%= k.getSoortKleding()%></td>
                        <td><%
                            Boolean b = k.getGeslacht();
                            // 0=V=false, 1=M=true
                            if (b) {
                            %>M<%
                            } else {%> V <%}

                            %></td>
                        <td><%= k.getMaat()%></td>

                        <td>
                            <a class="btn btn-primary btn-sm" href="KlerenDetail?id=<%= k.getId()%>"> <input type="submit" value="Meer info">  </a>
                            <a class="btn btn-primary btn-sm" href="KlerenVerwijderen?id=<%=k.getId()%>"><input type="submit" value="Verwijder"></a>
                        </td>
                    </tr>

                    <%  }%>
                </table>
                <br/>

                </body>
                </html>