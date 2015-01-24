<%@include file="/Header.jsp" %>
<%@page import="dal.Speelgoed"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Speelgoed> speelgoed = (ArrayList<Speelgoed>) session.getAttribute("vm");
%>
<!DOCTYPE html>
<html>
    <head>
      
    </head>
    <body>
        <div id="wrapper">
            <h1>Speelgoed</h1>
            <form method="POST" action="ZoekSpeelgoed" style="float: right">
                <div>
                    <input type="text" placeholder="omschrijving, titel/merk" name="zoekTerm" style="opacity: 0.8">
                    <input type="submit" value="Zoek" name="zoek">
                </div>
                    </form>
                    <br/>
                    <br/>
                
                <table>
                    <tr>
                        <th>Afbeelding</th>
                        <th>Omschrijving</th>
                        <th>Leeftijd (vanaf)</th>
                        <th></th>
                    </tr>

                    <%
                        for (Speelgoed s : speelgoed) {
                    %>

                    <tr>
                         <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=s.getId()%>"></td>
                        <td><%= s.getOmschrijving() %></td>
                        <td><%= s.getLeeftijd()%></td>

                        <td>
                            <a class="btn btn-primary btn-sm" href="SpeelgoedDetail?id=<%=s.getId()%>"> <input type="submit" value="Meer info"> </a>
                        <td></td>
                        </td>
                    </tr>

                    <%  }%>
                </table>
        </div>
                </body>
                </html>