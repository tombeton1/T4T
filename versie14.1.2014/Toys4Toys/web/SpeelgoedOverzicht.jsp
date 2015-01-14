<%@page import="dal.Speelgoed"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Speelgoed> speelgoed = (ArrayList<Speelgoed>) session.getAttribute("vm");
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
            <h1>Speelgoed</h1>
            <form method="POST" action="ZoekSpeelgoed">
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
                        <th>Geslacht</th>
                        <th>Leeftijd (vanaf)</th>
                        <th></th>
                    </tr>

                    <%
                        for (Speelgoed s : speelgoed) {
                    %>

                    <tr>
                        <td><%= s.geefPersoon()%></td>
                        <td><%= s.getTitel()%></td>
                        <td><%
                            Boolean b = s.getGeslacht();
                            // 0=V=false, 1=M=true
                            if (b) {
                            %>M<%
                            } else {%> V <%}

                            %></td>
                        <td><%= s.getLeeftijd()%></td>

                        <td>
                            <a class="btn btn-primary btn-sm" href="SpeelgoedDetail?id=<%=s.getId()%>"> <input type="submit" value="Meer info"> </a>
                            <a class="btn btn-primary btn-sm" href="SpeelgoedVerwijderen?id=<%=s.getId()%>"> <input type="submit" value="Verwijder"></a>
                        </td>
                    </tr>

                    <%  }%>
                </table>

                </body>
                </html>