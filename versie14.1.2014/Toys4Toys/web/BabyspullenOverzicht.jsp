<%-- 
    Document   : BabyspullenOverzicht
    Created on : 26-dec-2014, 16:53:04
    Author     : Eric
--%>
<%@include file="/Header.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="dal.Persoon"%>
<%@page import="dal.Babyspullen"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Babyspullen> baby = (ArrayList<Babyspullen>) session.getAttribute("vm");
%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        <div id="wrapper">
            <div>
            <h1>Baby Spullen</h1>
            <form method="POST" action="ZoekBaby" style="float:right" >
                <div>
                    <input type="text" placeholder="omschrijving, categorie" name="zoekTerm" style="opacity: 0.8">
                    <input type="submit" value="Zoek" name="zoek">
                </div>
                    </form>
                    <br/>
                    <br/>
                </div>
                <table>
                    <tr>
                        <th>Afbeelding</th>
                        <th>Omschrijving</th>
                        <th>Voor jongens of meisjes?</th>
                        <th></th>
                    </tr>

                    <%
                        for (Babyspullen ba : baby) {
                    %>

                    <tr>
                        <td><img height="150" width="150" src="${pageContext.request.contextPath}/DisplayImage?id=<%=ba.getId()%>"></td>
                        <td><%= ba.getOmschrijving()%></td>
                        <td><%
                            Boolean b = ba.getGeslacht();
                            // 0=V=false, 1=M=true
                            if (b) {
                            %>Jongens<%
                            } else {%> Meisjes <%}

                            %></td>

                        <td>
                            <a class="btn btn-primary btn-sm" href="BabyDetail?id=<%=ba.getId()%>"><input type="submit" value="Meer info"> </a>

                        </td>
                    </tr>

                    <%  }%>
                </table>
                <br/>
        </div>
                </body>
                </html>
