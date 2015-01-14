<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="dal.Speelgoed"%>
<%@page import="dal.Kleren"%>
<%@page import="dal.Boeken"%>
<%@page import="dal.Babyspullen"%>
<%@page import="java.util.ArrayList"%>

<% 
    ArrayList<Babyspullen> baby = (ArrayList<Babyspullen>)session.getAttribute("vm1");
    ArrayList<Boeken> boeken = (ArrayList<Boeken>)session.getAttribute("vm2");
    ArrayList<Kleren> kleren = (ArrayList<Kleren>)session.getAttribute("vm3");
    ArrayList<Speelgoed> speelgoed = (ArrayList<Speelgoed>)session.getAttribute("vm4");
    
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <title>Overzicht - zoekopgave</title>
    </head>
    <body style="margin: 15px">
                <h1>Overzicht</h1>
                
                
        <table style="width: 66%" rules="groups" class="table">
            <tr>
                <td>Afbeelding</td>
                <th>Omschrijving</th>
            </tr>
            <%                
    for (Babyspullen ba : baby) {
                if (baby.size() <= 0) {
                     // doe niets                    
                    }
                else{
                    %>
                    <tr>
                    <td><%= ba.getBabyspullenFoto() %></td>
                    <td><%= ba.getOmschrijving() %></td>
                    <td>
                    <a class="btn btn-primary btn-sm" href="BabyDetail?id=<%=ba.getId()%>"> Selecteer </a>
                     </td>
                    </tr>
                    <%
                }
    }                
            %>
     <%
     for (Boeken b : boeken)
     {
         if (boeken.size() <= 0) {
                     // doe niets                    
                    }
                else{
                    %>
                    <tr>
                    <td><%= b.getBoekenFoto()%></td>
                    <td><%= b.getOmschrijving() %></td>
                    <td>
                    <a class="btn btn-primary btn-sm" href="BoekDetail?id=<%=b.getId()%>"> Selecteer </a>
                </td>
                    </tr>
                    <%
                }
     }
            %>
            <%
            for (Kleren k : kleren)
     {
         if (kleren.size() <= 0) {
                     // doe niets                    
                    }
                else{
                    %>
                    <tr>
                    <td><%= k.getKlerenFoto() %></td>
                    <td><%= k.getOmschrijving() %></td>
                    <td>
                    <a class="btn btn-primary btn-sm" href="KlerenDetail?id=<%= k.getId()%>"> Selecteer </a>
                </td>
                    </tr>
                    <%
                }
     }
            %>
            <%
            for (Speelgoed s : speelgoed)
     {
         if (speelgoed.size() <= 0 ) {  
                    // doe niets
                    }
                else{
                    %>
                    <tr>
                    <td><%= s.getSpeelgoedFoto() %></td>
                    <td><%= s.getOmschrijving() %></td>
                    <td>
                    <a class="btn btn-primary btn-sm" href="SpeelgoedDetail?id=<%= s.getId()%>"> Selecteer </a>
                </td>
                    </tr>
                    <%
                }
     }
            %>
        </table>
        <br/>
        
        <a href="OverzichtCat.jsp" class="btn btn-primary btn-sm">HOME</a>
    </body>
</html>
