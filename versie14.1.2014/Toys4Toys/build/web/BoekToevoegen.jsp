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
            <h1>Boek toevoegen</h1>
            <form action="BoekToevoegen" method="POST" enctype="multipart/form-data">
                <table style="width: auto">
                    <tbody>
                        <tr>
                            <td>Titel: </td>
                            <td><input required="true" type="text"  name="Titel" ></td>
                        </tr>
                        <tr>
                            <td>Auteur: </td>
                            <td><input type="text"  name="Auteur" ></td>
                        </tr>
                        <tr>
                            <td>Uitgeverij: </td>
                            <td><input type="text"  name="Uitgeverij" ></td>
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
                            <td><input required="true" type="text"  name="Omschrijving" ></td>
                        </tr>
                        <tr>
                            <td>Foto toevoegen:</td>
                            <td><input type="file"  name="upfileBoek" ></td>
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


