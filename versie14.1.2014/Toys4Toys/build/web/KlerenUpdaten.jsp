<%-- 
    Document   : KlerenUpdaten
    Created on : 11-jan-2015, 11:41:27
    Author     : Eric
--%>
<%@include file="/Header.jsp" %>
<%@page import="dal.Kleren"%>
<%@page import="java.util.ArrayList"%>
<% 
    ArrayList<Kleren> kledij = (ArrayList<Kleren>)session.getAttribute("vm");
%>

<html>
    <head>
      
    </head>
    <body>
       
        <div id="wrapper">
            <h2>Pas de beschrijvingen van uw advertentie aan</h2>
            <form action="KlerenUpdaten" method="POST" enctype="multipart/form-data">
                <table style="width: auto">
                    <% for (Kleren k : kledij) {
                %>
                    <tbody>
                        <tr>
                            <td>Maat:</td>
                            <td><input required="true" type="text"  name="Maat" value="<%=k.getMaat() %>"></td>
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
                            <td>Soort kledij: </td>
                            <td><input required="true" type="text"  name="Soort" value="<%=k.getSoortKleding() %>" ></td>
                        </tr>
                        <tr>
                            <td>Seizoen:</td>
                            <td>
                                <select name="Seizoen">
                                    <option value="Winter" name="Seizoen">Winter</option>
                                    <option value="Herfst" name="Seizoen">Herfst</option>
                                    <option value="Lente" name="Seizoen">Lente</option>
                                    <option value="Zomer" name="Seizoen">Zomer</option>
                                    <option value="Alle" name="Seizoen">Alle</option>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td>Omschrijving:</td>
                            <td><input required="true" type="text"  name="Omschrijving" value="<%=k.getOmschrijving() %>"></td>
                        </tr>
                        <tr>
                            <td>Huidige foto:</td>
                            <td><img height="110" width="110" src="${pageContext.request.contextPath}/DisplayImage?id=<%=k.getId()%>">
                            </td>
                        </tr>
                        <tr>
                            <td>Indien u een nieuwe foto wilt toevoegen, kan dit hier:</td>
                            <td><input type="file"  name="upfileKleren" ></td>
                        </tr>
                        <tr>
                            <td> <input type="submit" value="Aanpassen" ></td>
                            <td> <input type="hidden" name="id" value="<%= k.getId() %>"></td>
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


