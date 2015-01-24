<%-- 
    Document   : BoekToevoegen
    Created on : 11-jan-2015, 11:41:27
    Author     : Eric
--%>
<%@include file="/Header.jsp" %>
<%@page import="dal.Boeken"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ArrayList<Boeken> boek = (ArrayList<Boeken>)session.getAttribute("vm");
%>

<html>
    <head>
       
    </head>
    <body>

        <div id="wrapper">
            <h2>Pas de beschrijvingen van uw advertentie aan</h2>
            <form action="BoekUpdaten" method="POST" enctype="multipart/form-data">
                <table style="width: auto">
                    <% for (Boeken b : boek) {
                %>
                    <tbody>
                        <tr>
                            <td>Titel:</td>
                            <td><input required="true" type="text" name="Titel" value="<%=b.getTitel()%>"></td>
                        </tr>

                        <tr>
                            <td>Auteur: </td>
                            <td><input type="text"  name="Auteur" value="<%=b.getAuteur()%>"></td>
                        </tr>
                        <tr>
                            <td>Uitgeverij: </td>
                            <td><input type="text"  name="Uitgeverij" value="<%=b.getUitgeverij()%>"></td>
                        </tr>
                        <tr>
                            <td>Categorie:</td>
                            <td>
                                <select name="Categorie">
                                    <option value="PrentenBoeken" name="Categorie">Prentenboeken</option>
                                    <option value="VoorleesBoeken" name="Categorie">Voorleesboeken</option>
                                    <option value="Baby_peuterboekjes" name="Categorie">Baby & peuterboekjes</option>
                                    <option value="EducatieveBoeken" name="Categorie">Educatieve boeken</option>
                                    <option value="VoorNieuweOuders" name="Categorie">Voor nieuwe ouders</option>

                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td>Omschrijving:</td>
                            <td><input required="true" type="text"  name="Omschrijving" value="<%=b.getOmschrijving()%>" ></td>
                        </tr>
                        <tr>
                            <td>Huidige foto:</td>
                            <td><img height="110" width="110" src="${pageContext.request.contextPath}/DisplayImage?id=<%=b.getId()%>">
                             </td>
                        </tr>
                         <tr>
                            <td>Indien u een nieuwe foto wilt toevoegen, kan dit hier:</td>
                            <td><input type="file"  name="upfileBoek" ></td>
                        </tr>
                        <tr>
                            <td> <input type="submit" value="Aanpassen" ></td>
                            <td> <input type="hidden" name="id" value="<%= b.getId() %>"></td>

                        </tr>
                    </tbody>
                    <% }%>
                </table>
            </form>
        </div>
        <footer>

        </footer>
    </body>

</html>


