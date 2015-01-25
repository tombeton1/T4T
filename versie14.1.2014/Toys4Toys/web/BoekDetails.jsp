<%-- 
    Document   : BoekDetails
    Created on : 4-jan-2015, 17:00:49
    Author     : Eric
--%>
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
            <h1>Detail</h1>

            <table style="width:auto">
                <%for (Boeken b : boeken) {
                %>               
                <tbody>
                    <tr>
                        <td>Aangeboden door</td>
                        <td><%= b.geefPersoon()%></td>
                    </tr>
                    <tr>
                        <td>Titel</td>
                        <td><%= b.getTitel()%></td>
                    </tr>
                    <tr>
                        <td>Afbeelding</td>
                        <td><img height="100" width="100" alt="" src="${pageContext.request.contextPath}/DisplayImage?id=<%=b.getId()%>"></td>
                    </tr>
                    <tr>
                        <td>Auteur</td>
                        <td><%= b.getAuteur()%></td>
                    </tr>
                    <tr>
                        <td>Uitgeverij</td>
                        <td><%= b.getUitgeverij()%></td>
                    </tr>
                    <tr>
                        <td>Categorie</td>
                        <td><%= b.getCategorie()%></td>
                    </tr>
                    <tr>
                        <td>Omschrijving</td>
                        <td><%= b.getOmschrijving()%></td>
                    </tr>

                    <%
                            if (ingelogd && !username.equals(b.getPersoon().getUserName())) {%>
                    <tr> <td><a href="BoekRuilen?id=<%=b.getId()%>"> Stel een ruil voor! </a></td>
                        <td></td></tr>
                        <%}%>

                </tbody>
            </table>
            <form action="MAILTO:<%= b.getPersoon().getEmail()%>?subject=Reactie op uw advertentie in Toys4Toys &nbsp; &nbsp;<%=b.getTitel()%> " method="POST" enctype="text/plain">
                <table style="width:auto">
                    <tr>
                        <td> Name:<br></td>
                        <td><input type="text" name="U heeft een reactie op uw advertentie van" ><br></td>
                    </tr>
                    <tr>
                        <td>  E-mail:<br></td>
                        <td><input type="text" name="Het email adres is"><br></td>
                    </tr>
                    <tr>
                        Reageer:<br>
                    <td> Uw tekst</td>
                    <td><input type="text" name="comment" size="150"><br><br></td>
                    </tr>
                    <tr>
                        <td>Verzenden</td>
                        <td> <input type="submit" value="Send"></td>
                    </tr>

                </table>
            </form>
            <%  }%>


        </div>
    </body>

</html>
