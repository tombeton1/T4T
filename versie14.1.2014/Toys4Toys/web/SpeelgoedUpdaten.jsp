<%-- 
    Document   : BoekToevoegen
    Created on : 11-jan-2015, 11:41:27
    Author     : Eric
--%>
<%@include file="/Header.jsp" %>
<%@page import="dal.Speelgoed"%>
<%@page import="java.util.ArrayList"%>
<% 
    ArrayList<Speelgoed> speelgoed = (ArrayList<Speelgoed>)session.getAttribute("vm");
%>

<html>
    <head>
      
    </head>
    <body>
        <div id="wrapper">
            <h2>Pas de beschrijvingen van uw advertentie aan</h2>
            <form action="SpeelgoedUpdaten" method="POST" enctype= "multipart/form-data">
                <table style="width: auto">
                   <% for (Speelgoed s : speelgoed) { %>
                    <tbody>

                        <tr>
                            <td>Naam van je speelgoed: </td>
                            <td><input required="true" type="text"  name="Titel" value="<%= s.getTitel() %>"></td>
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
                            <td><input required="true" type="text"  name="Leeftijd" value="<%= s.getLeeftijd() %>"></td>
                        </tr>
                        <tr>
                            <td>Categorie:</td>
                            <td>
                                <select name="Categorie">
                                    <option value="Baby" name="Categorie">Baby</option>
                                    <option value="Peuter" name="Categorie">Peuter</option>
                                    <option value="Kleuter" name="Categorie">Kleuter</option>
                                    <option value="Scholier" name="Categorie">Scholier</option>
                                    <option value="Tiener" name="Categorie">Tiener</option>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td>Omschrijving:</td>
                            <td><input required="true" type="text"  name="Omschrijving" value="<%= s.getOmschrijving() %>"></td>
                        </tr>
                        <tr>
                            <td>Huidige foto:</td>
                            <td><img height="110" width="110" src="${pageContext.request.contextPath}/DisplayImage?id=<%=s.getId()%>"></td>
                        </tr>
                        <tr>
                            <td>Indien u een nieuwe foto wilt toevoegen, kan dit hier:</td>
                            <td><input type="file"  name="upfileSpeelgoed" ></td>
                        </tr>
                        <tr>
                            <td> <input type="submit" value="Aanpassen" ></td>
                            <td> <input type="hidden" name="id" value="<%= s.getId() %>"></td>

                        </tr>
                    </tbody>
                    <%}%>
                </table>
            </form>
        </div>
        <footer>

        </footer>
    </body>

</html>

