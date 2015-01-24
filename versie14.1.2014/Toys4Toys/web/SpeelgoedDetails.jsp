<%-- 
    Document   : SpeelgoedDetails
    Created on : 4-jan-2015, 17:19:51
    Author     : Eric
--%>
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
            <h1>Detail</h1>

            <table style="width: auto;">
                <%for (Speelgoed s : speelgoed) {
                %>
                <tbody>
                    <tr>
                        <td>Aangeboden door</td>
                        <td><%= s.geefPersoon()%></td>
                    </tr>
                    <tr>
                        <td>Afbeelding</td>
                        <td><img height="110" width="110" src="${pageContext.request.contextPath}/DisplayImage?id=<%=s.getId()%>"></td>
                    </tr>
                    <tr>
                        <td>Titel</td>
                        <td><%= s.getTitel()%></td>
                    </tr>
                    
                    <tr>
                        <td>Voor jongens of meisjes?</td>
                        <td><%
                            Boolean b = s.getGeslacht();
                            // 0=V=false, 1=M=true
                            if (b) {
                            %>Jongens<%
                            } else {%> Meisjes <%}

                            %></td>
                    </tr>
                    <tr>
                        <td>Leeftijd</td>
                        <td><%= s.getLeeftijd()%></td>
                    </tr>
                    <tr>
                        <td>Categorie</td>
                        <td><%= s.getCategorie()%></td>
                    </tr>
                    <tr>
                        <td>Omschrijving</td>
                        <td><%= s.getOmschrijving()%></td>
                    </tr>                                           
                        <%
                        if (ingelogd && !username.equals(s.getPersoon().getUserName())) {%>
                        <tr>
                           <td><a href="SpeelgoedRuilen?id=<%=s.getId()%>"> Stel een ruil voor! </a></td>
                            <td></td>
                        </tr>
                           <%}%> 
                </tbody>
            </table>
            <%  }%>


        </div>
    </body>
</html>

