<%@page import="dal.Babyspullen"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ArrayList<Babyspullen> baby = (ArrayList<Babyspullen>)session.getAttribute("vm");
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
       <table style="text-align:left; padding: 2px;">
                <%                           for (Babyspullen ba : baby) {
                %>
                <tbody>
                    <tr>
                        <td>Aangeboden door</td>
                        <td><%= ba.geefPersoon()%></td>
                    </tr>
                    <tr>
                        <td>Titel</td>
                        <td><%= ba.getTitel()%></td>
                    </tr>
                    <tr>
                        <td>Afbeelding</td>
                        <td><img src="<%= ba.getBabyspullenFoto()%>"</td>
                    </tr>
                    <tr>
                        <td>Geslacht</td>
                         <td><% 
                        Boolean b = ba.getGeslacht();
                        // 0=V=false, 1=M=true
                        if (b) {
                            %>M<%    
                            }
                        else{%> V <%}
                         
                %></td>
                    </tr>
                    <tr>
                        <td>Leeftijd</td>
                        <td><%= ba.getLeeftijd() %></td>
                    </tr>
                    <tr>
                        <td>Categorie</td>
                        <td><%= ba.getCategorie() %></td>
                    </tr>
                    <tr>
                        <td>Omschrijving</td>
                        <td><%= ba.getOmschrijving()%></td>
                    </tr>

                </tbody>
                <%  }%>
            </table>
 
        </div>
    </body>

</html>