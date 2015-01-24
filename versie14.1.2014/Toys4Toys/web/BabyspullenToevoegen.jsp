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
            <h1>Babyspulletjes toevoegen</h1>
            <form action="BabyToevoegen" method="POST" enctype="multipart/form-data" >
                <table style="width: auto">
                    <tbody>
                        <tr>
                            <td>Geef een korte naam:</td>
                            <td><input required="true" type="text" name="Titel"></td>
                        </tr>

                        <tr>
                            <td>Geslacht: </td>
                            <td><select name="Geslacht">
                                    <option value='true' name="Geslacht">jongen</option>
                                    <option value='false' name="Geslacht">meisje</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Leeftijd (vanaf): </td>
                            <td><input type="text"  name="Leeftijd" ></td>
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
                            <td><input required="true" type="text"  name="Omschrijving" ></td>
                        </tr>
                        <tr>
                            <td>Foto toevoegen:</td>
                            <td><input type="file"  name="upfileBaby" ></td>
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

