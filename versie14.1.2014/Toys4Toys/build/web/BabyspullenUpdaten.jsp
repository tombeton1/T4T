<%-- 
    Document   : BabyUpdaten
    Created on : 11-jan-2015, 11:41:27
    Author     : Eric
--%>
<%@include file="/Header.jsp" %>
<%@page import="dal.Babyspullen"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ArrayList<Babyspullen> baby = (ArrayList<Babyspullen>)session.getAttribute("vm");
%>

<html>
    <head>
        
    </head>
    <body>

        <div id="wrapper">
            <h2>Pas de beschrijvingen van uw advertentie aan</h2>
            <form action="BabyUpdaten" method="POST" enctype="multipart/form-data">
                <table style="width: auto">
                    <% for (Babyspullen ba : baby) {
                %>
                    <tbody>
                       
                        <tr>
                            <td>Geef een korte naam:</td>
                            <td><input required="true" type="text" name="Titel" value="<%=ba.getTitel()%>"></td>
                        </tr>

                        <tr>
                            <td>Voor jongens of meisjes? </td>
                            <td><select name="Geslacht">
                                    <option value='true' name="Geslacht">Jongens</option>
                                    <option value='false' name="Geslacht">Meisjes</option>
                                </select>
                            </td>

                        </tr>
                        <tr>
                            <td>Leeftijd (vanaf): </td>
                            <td><input type="text"  name="Leeftijd" value="<%=ba.getLeeftijd()%>"></td>

                        </tr>
                        <tr>
                            <td>Categorie:</td>
                            <td>
                                <select name="Categorie">
                                    <option value="Autostoeltjes" name="Categorie">Autostoeltjes en veiligheidszitjes</option>
                                    <option value="Kindermeubelen" name="Categorie">Kindermeubelen</option>
                                    <option value="Kinderwagens" name="Categorie">Kinderwagens en combinaties</option>
                                    <option value="Andere" name="Categorie">Andere</option>
                                </select>

                            </td>

                        </tr>
                        <tr>
                            <td>Omschrijving:</td>
                            <td><input required="true" type="text"  name="Omschrijving" value="<%=ba.getOmschrijving()%>" ></td>

                        </tr>
                        <tr>
                            <td>Huidige foto:</td>
                            <td><img id="BabyFoto" height="110" width="110" src="${pageContext.request.contextPath}/DisplayImage?id=<%=ba.getId()%>"></td>
                        </tr>
                        <tr>
                            <td>Indien u een nieuwe foto wilt toevoegen, kan dit hier:</td>
                            <td><input type="file"  name="upfileBaby" ></td>
                        </tr>
                        
                        
                        <tr>
                            <td> <input type="submit" value="Aanpassen" ></td>
                            <td><td> <input type="hidden" name="id" value="<%= ba.getId() %>"></td>

                        </tr>
                    </tbody>
                    <% }%>
                </table>
        </div>
        <footer>

        </footer>
    </body>

</html>


