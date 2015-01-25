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
    ArrayList<Kleren> trk = (ArrayList<Kleren>) session.getAttribute("vm5");   
%>
<!DOCTYPE html>
<html>
    <head>
      
    </head>
    <body>
              
        <div id="wrapper">
            <h2>De door u geselecteerde advertentie</h2>
            <%                
    for (Kleren ruil : trk) {
               
                %>
            <table style="width: auto;">
                <tr>
                <th>Afbeelding</th>
                <th>Seizoen</th>
                <th>Omschrijving</th>
                </tr>
                <tr>
                 
                    <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=ruil.getId()%>"></td>
                    <td><%= ruil.getSeizoen()%> </td>
                    <td><%= ruil.getOmschrijving()%> </td>
                    </tr>
            </table>
                
        <h2>Maak een keuze uit uw advertenties om te ruilen met de door u geselecteerde advertentie</h2>  
        <table style="width: auto;">
            
            <tr>
                <th>Afbeelding</th>
                <th>Omschrijving</th>
                <th>Stuur de adverteerder een email met uw voorstel</th>
            </tr>
        </table>
            <%                
    for (Babyspullen ba : baby) {
                if (baby.size() <= 0) {
                     // doe niets                    
                    }
                else{
                    %>
          <form action="Mail" method="POST">
            <input type="hidden" name="Eigenaar" value="<%= ruil.getPersoon().getEmail().toString() %>"/>
                <input type="hidden" name="Subject" value="<%= ruil.getOmschrijving() %>"/>
                    <input type="hidden" name="Omschrijving" value="<%= ba.getOmschrijving() %>"/>
                    <table style="width: auto;">
                    <tr>
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=ba.getId()%>"></td>
                    <td><%= ba.getOmschrijving() %></td>
                    <td>
                    <input type="submit" value="Stuur email"> </a>
                     </td>
                    </tr>
                </table>
                    </form>
                    <%
                }
    }                
    for (Boeken b : boeken) {
                if (boeken.size() <= 0) {
                     // doe niets                    
                    }
                else{
                    %>
          <form action="Mail" method="POST">
            <input type="hidden" name="Eigenaar" value="<%= ruil.getPersoon().getEmail().toString() %>"/>
                <input type="hidden" name="Subject" value="<%= ruil.getOmschrijving() %>"/>
                    <input type="hidden" name="Omschrijving" value="<%= b.getOmschrijving() %>"/>
                    <table style="width: auto;">
                    <tr>
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=b.getId()%>"></td>
                    <td><%= b.getOmschrijving() %></td>
                    <td>
                    <input type="submit" value="Stuur email"> </a>
                     </td>
                    </tr>
                </table>
                    </form>
                    <%
                }
    }                               
    for (Kleren k : kleren) {
                if (kleren.size() <= 0) {
                     // doe niets                    
                    }
                else{
                    %>
          <form action="Mail" method="POST">
            <input type="hidden" name="Eigenaar" value="<%= ruil.getPersoon().getEmail().toString() %>"/>
                <input type="hidden" name="Subject" value="<%= ruil.getOmschrijving() %>"/>
                    <input type="hidden" name="Omschrijving" value="<%= k.getOmschrijving() %>"/>
                    <table style="width: auto;">
                    <tr>
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=k.getId()%>"></td>
                    <td><%= k.getOmschrijving() %></td>
                    <td>
                    <input type="submit" value="Stuur email"> </a>
                     </td>
                    </tr>
                </table>
                    </form>
                    <%
                }
    }                             
    for (Speelgoed s : speelgoed) {
                if (speelgoed.size() <= 0) {
                     // doe niets                    
                    }
                else{
                    %>
          <form action="Mail" method="POST">
            <input type="hidden" name="Eigenaar" value="<%= ruil.getPersoon().getEmail().toString() %>"/>
                <input type="hidden" name="Subject" value="<%= ruil.getOmschrijving() %>"/>
                    <input type="hidden" name="Omschrijving" value="<%= s.getOmschrijving() %>"/>
                    <table style="width: auto;">
                    <tr>
                    <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=s.getId()%>"></td>
                    <td><%= s.getOmschrijving() %></td>
                    <td>
                    <input type="submit" value="Stuur email"> </a>
                     </td>
                    </tr>
                </table>
                    </form>
                    <%
                }
    }                
        }%>  
        </div>
    </body>
</html>
