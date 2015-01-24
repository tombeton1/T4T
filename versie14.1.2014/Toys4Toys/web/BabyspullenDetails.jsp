<%@include file="/Header.jsp" %>
<%@page import="dal.Babyspullen"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ArrayList<Babyspullen> baby = (ArrayList<Babyspullen>)session.getAttribute("vm");
%>
<!DOCTYPE html>
<html>
     <head>
        
    </head>
    <body>



        <div id="wrapper">
       <table style="width:auto">
                <%for (Babyspullen ba : baby) {
                    
                %>
                <tbody>
                    <tr>
                        <td>Aangeboden door</td>
                        <td><%= ba.geefPersoon()%></td>
                    </tr>
                    <tr>
                        <td>Titel</td>
                        <td><%= ba.getTitel()%></td>
                    </tr>
                    <tr>
                        <td>Afbeelding</td>
                        <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=ba.getId()%>"></td>
                    </tr>
                    <tr>
                        <td>Voor jongens of meisjes?</td>
                         <td><% 
                        Boolean b = ba.getGeslacht();
                        // 0=V=false, 1=M=true
                        if (b) {
                            %>Jongens<%    
                            }
                        else{%> Meisjes <%}
                         
                %></td>
                    </tr>
                    <tr>
                        <td>Leeftijd</td>
                        <td><%= ba.getLeeftijd() %></td>
                    </tr>
                    <tr>
                        <td>Categorie</td>
                        <td><%= ba.getCategorie() %></td>
                    </tr>
                    <tr>
                        <td>Omschrijving</td>
                        <td><%= ba.getOmschrijving()%></td>
                    </tr>                                        
                        <%
                        if (ingelogd && !username.equals(ba.getPersoon().getUserName())) {%>
                            <tr><td><a href="BabyRuilen?id=<%=ba.getId()%>"> Stel een ruil voor! </a></td>
                            <td></td></tr>
                           <%}%>
                    

                </tbody>
                <%  }%>
            </table>
 
        </div>
    </body>

</html>