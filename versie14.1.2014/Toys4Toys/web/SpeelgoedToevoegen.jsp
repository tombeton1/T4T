<%-- 
    Document   : BoekToevoegen
    Created on : 11-jan-2015, 11:41:27
    Author     : Eric
--%>
<%@include file="/Header.jsp" %>
<html>
    <head>
        
    </head>
    <body>
        <div id="wrapper">
            <h1>Speelgoed toevoegen</h1>
            <form action="SpeelgoedToevoegen" method="POST" enctype= "multipart/form-data">
                <table style="width: auto">
                    <tbody>

                        <tr>
                            <td>Naam van je speelgoed: </td>
                            <td><input required="true" type="text"  name="Titel"></td>
                        </tr>
                        <tr>
                            <td>Geslacht: </td>
                            <td><select name="Geslacht">
                                    <option value='true' name="Geslacht">M</option>
                                    <option value='false' name="Geslacht">V</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Leeftijd (vanaf): </td>
                            <td><input required="true" type="text"  name="Leeftijd" ></td>
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
                            <td><input required="true" type="text"  name="Omschrijving" ></td>
                        </tr>
                        <tr>
                            <td>Foto toevoegen:</td>
                            <td><input type="file"  name="upfileSpeelgoed" ></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> <input type="submit" value="Toevoegen" ></td>
                        </tr>
                    </tbody>
                </table>

            </form>
        </div>
        <footer>

        </footer>
    </body>

</html>

