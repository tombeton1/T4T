<%@include file="/Header.jsp" %>
<%@page import="dal.Kleren"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Kleren> kleren = (ArrayList<Kleren>) session.getAttribute("vm");
%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
  <div id="wrapper" style="overflow: hidden">
            <h1>Reageer op deze advertentie</h1>
            <div style="float: left">
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
                            } else {%> Meisjes <%}

                            %></td>
                    </tr>
                    <tr>
                        <td>Maat</td>
                        <td><%= k.getMaat()%></td>
                    </tr>
                    <tr>
                        <td>Seizoen</td>
                        <td><%= k.getSeizoen()%></td>
                    </tr>
                    <tr>
                        <td>Omschrijving</td>
                        <td><%= k.getOmschrijving()%></td>
                    </tr>
                </tbody>
            </table>
            </div>
                        <%
                            if (ingelogd && !username.equals(k.getPersoon().getUserName())) {%>
                        <div style="float: left; margin-left: 20px">
            <form action="MAILTO:<%= k.getPersoon().getEmail()%>?subject=Reactie op uw advertentie in Toys4Toys &nbsp; &nbsp;<%=k.getSoortKleding()%> " method="POST" enctype="text/plain">
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