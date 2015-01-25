<%@include file="/Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="dal.Speelgoed"%>
<%@page import="dal.Kleren"%>
<%@page import="dal.Boeken"%>
<%@page import="dal.Babyspullen"%>
<%@page import="java.util.ArrayList"%>

<% 
    ArrayList<Boeken> boeken = (ArrayList<Boeken>)session.getAttribute("vm1");
    ArrayList<Babyspullen> baby = (ArrayList<Babyspullen>)session.getAttribute("vm2");
    ArrayList<Kleren> kleren = (ArrayList<Kleren>)session.getAttribute("vm3");
    ArrayList<Speelgoed> speelgoed = (ArrayList<Speelgoed>)session.getAttribute("vm4");
    ArrayList<Babyspullen> trba = (ArrayList<Babyspullen>) session.getAttribute("vm5");   
%>
<!DOCTYPE html>
<html>
    <head>       
        <title>Ruilen</title>
    </head>
    <body>
            


        <div id="wrapper">
            <h2>De door u geselecteerde advertentie</h2>
            <table style="width: auto;">
                <tr>
                <th>Afbeelding</th>
                <th>Leeftijd (vanaf)</th>
                <th>Omschrijving</th>
                </tr>
                <%                
    for (Babyspullen ruil : trba) {
                %>
                <tr>
                    <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=ruil.getId()%>"></td>
                    <td><%= ruil.getLeeftijd() %></td>
                    <td><%= ruil.getOmschrijving() %></td>
                    </tr>
        
                   <% }
                    %>
            </table>
                
        <h2>Maak een keuze uit uw advertenties om te ruilen met de door u geselecteerde advertentie</h2>      
        <table style="width: auto;">
            
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
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=b.getId()%>"></td>
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
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=k.getId()%>"></td>
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
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=s.getId()%>"></td>
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
        <br/>
        </div>
    </body>
</html>
