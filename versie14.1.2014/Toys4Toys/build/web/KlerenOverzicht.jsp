<%@include file="/Header.jsp" %>
<%@page import="dal.Kleren"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Kleren> kleren = (ArrayList<Kleren>) session.getAttribute("vm");
%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>

        <div id="wrapper">
            <h1>Kleren</h1>
            <form method="POST" action="ZoekKleren" style="float: right">
                <div>
                    <input type="text" placeholder="omschrijving, seizoen, soort" name="zoekTerm" style="opacity: 0.8">
                    <input type="submit" value="Zoek" name="zoek">
                </div>
                    </form>
                    <br/>
                    <br/>
                     <% if (kleren.size() <= 0) {%>
                <table style="width: auto;" >
            
            <tr>
                <th>Afbeelding</th>
                <th>Soort kledij</th>
                <th>Voor jongens of meisjes?</th>
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
                        <th>Soort kledij</th>
                        <th>Voor jongens of meisjes?</th>
                        <th>Maat</th>
                        <th></th>
                    </tr>


                    <%
                        for (Kleren k : kleren) {
                    %>

                    <tr>
                         <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=k.getId()%>"></td>
                        <td><%= k.getSoortKleding()%></td>
                        <td><%
                            Boolean b = k.getGeslacht();
                            // 0=V=false, 1=M=true
                            if (b) {
                            %>Jongens<%
                            } else {%> Meisjes <%}

                            %></td>
                        <td><%= k.getMaat()%></td>

                        <td>
                            <a class="btn btn-primary btn-sm" href="KlerenDetail?id=<%= k.getId()%>"> <input type="submit" value="Meer info">  </a>
                        </td>
                    </tr>

                    <%  }%>
                </table>
               <% }%>
        </div>
                </body>
                </html>