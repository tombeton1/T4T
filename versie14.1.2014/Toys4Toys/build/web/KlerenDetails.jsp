<%@page import="dal.Kleren"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ArrayList<Kleren> kleren = (ArrayList<Kleren>)session.getAttribute("vm");
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
        <h1>Detail</h1>
        
        <table style="text-align:left; padding: 2px;">
                <%                           for (Kleren k : kleren) {
                %>
                <tbody>
                    <tr>
                        <td>Aangeboden door</td>
                        <td><%= k.geefPersoon()%></td>
                    </tr>
                    <tr>
                        <td>Soort Kleding</td>
                        <td><%= k.getSoortKleding()%></td>
                    </tr>
                    <tr>
                        <td>Afbeelding</td>
                        <td><img src="<%= k.getKlerenFoto()%>"</td>
                    </tr>
                    <tr>
                        <td>Geslacht</td>
                         <td><% 
                        Boolean b = k.getGeslacht();
                        // 0=V=false, 1=M=true
                        if (b) {
                            %>M<%    
                            }
                        else{%> V <%}
                         
                %></td>
                    </tr>
                    <tr>
                        <td>Maat</td>
                        <td><%= k.getMaat() %></td>
                    </tr>
                    <tr>
                        <td>Seizoen</td>
                        <td><%= k.getSeizoen() %></td>
                    </tr>
                    <tr>
                        <td>Omschrijving</td>
                        <td><%= k.getOmschrijving()%></td>
                    </tr>

                </tbody>
            </table>
            <%  }%>
        <br/>
        
        </div>
    </body>
</html>