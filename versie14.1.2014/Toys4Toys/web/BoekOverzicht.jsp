
<%@include file="/Header.jsp" %>
<%@page import="dal.Boeken"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Boeken> boeken = (ArrayList<Boeken>) session.getAttribute("vm");

%>
<!DOCTYPE html>
<html>
    <head>
      
    </head>
    <body>


        <div id="wrapper">
            <h1>Boeken</h1>
            <form method="POST" action="ZoekBoek" style="float:right">
                <div>
                    <input type="text" placeholder="omschrijving, titel, auteur" name="zoekTerm" style="opacity: 0.8">
                    <input type="submit" value="Zoek" name="zoek">
                </div>
                    </form>
                    <br/>
                    <br/>
                 <% if (boeken.size() <= 0) {%>
                <table style="width: auto;" >
            
            <tr>
                <th>Afbeelding</th>
                <th>Titel</th>
                <th>Categorie</th>
            </tr>
            <tr>
                <td>Geen resultaten</td>
                <td></td>
                <td></td>
                
            </tr>
                </table>
            
           <% }
        else{
    
        %>              
                <table>
                    <tr>
                        <th>Afbeelding</th>
                        <th>Titel</th>
                        <th>Categorie</th>
                        <th></th>

                    </tr>
                    <%                for (Boeken b : boeken) {
                    %>


                    <tr>
                         <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=b.getId()%>"></td>
                        <td><%= b.getTitel()%></td>
                        <td><%= b.getCategorie()%></td>

                        <td>
                            <a class="btn btn-primary btn-sm" href="BoekDetail?id=<%=b.getId()%>"> <input type="submit" value="Meer info">  </a>
                           <!-- <a class="btn btn-primary btn-sm" href="BoekVerwijderen?id=<%=b.getId()%>"> <input type="submit" value="Verwijder"> </a>-->
                        </td>
                    </tr>

                    <%  }%>
                </table>
<%}%>
        </div>
                </body>
                </html>
