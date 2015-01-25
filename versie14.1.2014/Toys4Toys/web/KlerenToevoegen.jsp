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
            <h1>Kledij toevoegen</h1>
            <form action="KlerenToevoegen" method="POST" enctype="multipart/form-data">
                <table style="width: auto">
                    <tbody>
                        <tr>
                            <td>Maat:</td>
                            <td><input required="true" type="text"  name="Maat" ></td>
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
                            <td>Soort kledij: </td>
                            <td><input required="true" type="text"  name="Soort" ></td>
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
                            <td><input required="true" type="text"  name="Omschrijving" ></td>
                        </tr>
                        <tr>
                            <td>Foto toevoegen:</td>
                            <td><input type="file"  name="upfileKleren" ></td>
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


