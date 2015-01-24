<%-- 
    Document   : PersoonDetails
    Created on : 7-jan-2015, 17:27:51
    Author     : Eric
--%>
<%@page import="dal.Speelgoed"%>
<%@page import="dal.Kleren"%>
<%@page import="dal.Babyspullen"%>
<%@page import="dal.Boeken"%>
<%@include file="/Header.jsp" %>
<%@page import="dal.Persoon"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Boeken> boeken = (ArrayList<Boeken>)session.getAttribute("vm1");
    ArrayList<Babyspullen> baby = (ArrayList<Babyspullen>)session.getAttribute("vm2");
    ArrayList<Kleren> kleren = (ArrayList<Kleren>)session.getAttribute("vm3");
    ArrayList<Speelgoed> speelgoed = (ArrayList<Speelgoed>)session.getAttribute("vm4");
    ArrayList<Persoon> persoon = (ArrayList<Persoon>)session.getAttribute("vm5");
    
    %>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <div id="wrapper">
        <h1>Pas uw persoonlijke informatie aan</h1>
        <table>
            <tr>
                <th>Voornaam</th>                
                <th>Familienaam</th>
                <th>Username</th>
            </tr>
            <%                
    for (Persoon p : persoon) {

            %>
            <tr>
                <td><%= p.getVoornaam() %></td>
                <td><%= p.getFamilienaam() %></td>
                <td><%= p.getUserName() %></td>
                
                <td><a class="btn btn-primary btn-sm" href="PersoonUpdating?id=<%=p.getId()%>"> Aanpassen </a></td>
            </tr>

            <%  }%>
        </table>
        <br/>
        <h2>Voeg een advertentie toe</h2>
        <table>
            <tr>Kies een categorie waarin u wenst te adverteren</tr>
            <tr>
                <td><a href="BabyspullenToevoegen.jsp">Babyspullen</a></td>
                <td><a href="BoekToevoegen.jsp">Boeken</a></td>
                <td><a href="KlerenToevoegen.jsp">Kledij</a></td>
                <td><a href="SpeelgoedToevoegen.jsp">Speelgoed</a></td>
            </tr>
        </table>
        <h2>Uw advertenties</h2>
        <table>
            
            <tr>
                <th>Afbeelding</th>
                <th>Omschrijving</th>
                <th></th>
            </tr>
            <%                
    for (Babyspullen ba : baby) {
                if (baby.size() <= 0) {
                     // doe niets                    
                    }
                else{
                    %>
                    <tr>
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=ba.getId()%>"></td>
                    <td><%= ba.getOmschrijving() %></td>
                   
                        <%
                        if (ingelogd && username.equals(ba.getPersoon().getUserName())) {%>
                        <td><a class="btn btn-primary btn-sm" href="BabyVerwijderen?id=<%=ba.getId()%>"> <input type="submit" value="Verwijderen"> </a>
                            <br/>
                           <a class="btn btn-primary btn-sm" href="BabyUpdating?id=<%=ba.getId()%>"> <input type="submit" value="Aanpassen"> </a>
                        </td>
                        <%} else{%>
                            <td><a href="BabyDetail?id=<%=ba.getId()%>"> Meer info </a></td>
                            <td></td>
                                <%}%>
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
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=b.getId()%>"></td>
                    <td><%= b.getOmschrijving() %></td>
                    <%
                        if (ingelogd && username.equals(b.getPersoon().getUserName())) {%>
                        <td><a class="btn btn-primary btn-sm" href="BoekVerwijderen?id=<%=b.getId()%>"> <input type="submit" value="Verwijderen"> </a>
                            <br/>
                           <a class="btn btn-primary btn-sm" href="BoekUpdating?id=<%=b.getId()%>"> <input type="submit" value="Aanpassen"> </a>
                        </td>
                        <%} else{%>
                            <td><a href="BoekDetail?id=<%=b.getId()%>"> Meer info </a></td>
                            <td></td>
                                <%}%>
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
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=k.getId()%>"></td>
                    <td><%= k.getOmschrijving() %></td>
                   <%
                        if (ingelogd && username.equals(k.getPersoon().getUserName())) {%>
                        <td><a class="btn btn-primary btn-sm" href="KlerenVerwijderen?id=<%=k.getId()%>"> <input type="submit" value="Verwijderen"> </a>
                            <br/>
                           <a class="btn btn-primary btn-sm" href="KlerenUpdating?id=<%=k.getId()%>"> <input type="submit" value="Aanpassen"> </a>
                        </td>
                        <%} else{%>
                            <td><a href="BabyDetail?id=<%=k.getId()%>"> Meer info </a></td>
                            <td></td>
                                <%}%>
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
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=s.getId()%>"></td>
                    <td><%= s.getOmschrijving() %></td>
                    <%
                        if (ingelogd && username.equals(s.getPersoon().getUserName())) {%>
                        <td><a class="btn btn-primary btn-sm" href="SpeelgoedVerwijderen?id=<%=s.getId()%>"> <input type="submit" value="Verwijderen"> </a>
                            <br/>
                           <a class="btn btn-primary btn-sm" href="SpeelgoedUpdating?id=<%=s.getId()%>"> <input type="submit" value="Aanpassen"> </a>
                        </td>
                        <%} else{%>
                            <td><a href="SpeelgoedDetail?id=<%=s.getId()%>"> Meer info </a></td>
                            <td></td>
                                <%}%>
                    </tr>
                    <%
                }
     }
            %>
        </table>
        <br/>
        </div>
    </body>
</html>
