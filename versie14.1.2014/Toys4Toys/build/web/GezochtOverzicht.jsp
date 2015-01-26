<%@include file="/Header.jsp" %>
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
       
        <title>Overzicht - zoekopgave</title>
    </head>
    <body>
        <div id="wrapper">
            <h1>Gevonden items</h1>
            <% if (baby.size() <= 0 && boeken.size() <= 0 && kleren.size()<= 0 && speelgoed.size() <= 0) {%>
                <table style="width: auto;" >
            
            <tr>
                <th>Afbeelding</th>
                <th>Omschrijving</th>
            </tr>
            <tr>
                <td>Geen resultaten</td>
                <td></td>
            </tr>
                </table>
            
           <% }
        else{
    
        %>              
        <table style="width: auto;" >
            <tr>
                <th>Afbeelding</th>
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
                    <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=ba.getId()%>"></td>
                    <td><%= ba.getOmschrijving() %></td>
                    <td>
                    <a class="btn btn-primary btn-sm" href="BabyDetail?id=<%=ba.getId()%>"><input type="submit" value="Meer info"> </a>
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
                    <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=b.getId()%>"></td>
                    <td><%= b.getOmschrijving() %></td>
                    <td>
                    <a class="btn btn-primary btn-sm" href="BoekDetail?id=<%=b.getId()%>"><input type="submit" value="Meer info"> </a>
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
                    <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=k.getId()%>"></td>
                    <td><%= k.getOmschrijving() %></td>
                    <td>
                    <a class="btn btn-primary btn-sm" href="KlerenDetail?id=<%=k.getId()%>"><input type="submit" value="Meer info"> </a>
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
                    <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=s.getId()%>"></td>
                    <td><%= s.getOmschrijving() %></td>
                    <td>
                    <a class="btn btn-primary btn-sm" href="SpeelgoedDetail?id=<%=s.getId()%>"><input type="submit" value="Meer info"> </a>
                </td>
                    </tr>
                    <%
                }
     }
            %>
        </table>
        <%}%>
        </div>
    </body>
</html>
