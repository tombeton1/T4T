<%@include file="/Header.jsp" %>
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
        <div id="wrapper" style="overflow: hidden">
            <h1>Reageer op deze advertentie</h1>
            <div style="float: left">
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
                            } else {%> Meisjes <%}

                            %></td>
                    </tr>
                    <tr>
                        <td>Leeftijd</td>
                        <td><%= ba.getLeeftijd()%></td>
                    </tr>
                    <tr>
                        <td>Categorie</td>
                        <td><%= ba.getCategorie()%></td>
                    </tr>
                    <tr>
                        <td>Omschrijving</td>
                        <td><%= ba.getOmschrijving()%></td>
                    </tr>                                        
                </tbody>
            </table>
            </div>
            <%
                        if (ingelogd && !username.equals(ba.getPersoon().getUserName())) {%>
        <div style="float: left; margin-left: 20px">
            <form action="MAILTO:<%= ba.getPersoon().getEmail()%>?subject=Reactie op uw advertentie in Toys4Toys &nbsp; &nbsp;<%=ba.getTitel()%> " method="POST" enctype="text/plain">
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
         <%}%>
        </div>
    </body>

</html>