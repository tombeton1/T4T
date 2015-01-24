<%@include file="/Header.jsp" %>
<%@page import="dal.Kleren"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ArrayList<Kleren> kleren = (ArrayList<Kleren>)session.getAttribute("vm");
%>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body>
        <div id="wrapper">
        <h1>Detail</h1>
        
        <table style="width: auto;">
                <%for (Kleren k : kleren) {
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
                        <td><img height="100" width="100" src="${pageContext.request.contextPath}/DisplayImage?id=<%=k.getId()%>"></td>
                    </tr>
                    <tr>
                        <td>Voor jongens of meisjes?</td>
                         <td><% 
                        Boolean b = k.getGeslacht();
                        // 0=V=false, 1=M=true
                        if (b) {
                            %>Jongens<%    
                            }
                        else{%> Meisjes <%}
                         
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
                                          
                        <%
                        if (ingelogd && !username.equals(k.getPersoon().getUserName())) {%>
                           <tr> <td><a href="KlerenRuilen?id=<%=k.getId()%>"> Stel een ruil voor! </a></td>
                            <td></td></tr>
                           <%}%>
                    
                </tbody>
            </table>
            <%  }%>
        <br/>
        
        </div>
    </body>
</html>