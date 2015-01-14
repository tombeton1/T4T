<%-- 
    Document   : BoekToevoegen
    Created on : 11-jan-2015, 11:41:27
    Author     : Eric
--%>

<html>
    <head>
        <link href="Styles.css" rel="stylesheet" type="text/css"/>
        <link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Crafty+Girls' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div class="topban"></div>
        <div id="logo"><h1>Toys4Toys</h1>
            <h4>Makkelijk ruilen van speelgoed, kleren, boeken voor kinderen </h4></div>

        <div class="topban">

            <nav>
                <ul>
                    <li><a href="Index.jsp">Home</a></li>
                    <li><a href="CatBoekSelecteren">Boeken</a></li>
                    <li><a href="CatBabySelecteren">Baby Spullen</a></li>
                    <li><a href="CatKlerenSelecteren">Kleren</a></li>
                    <li><a href="CatSpeelgoedSelecteren">Speelgoed</a></li>  
                    <li><a href="Login.jsp">Advertentie toevoegen</a></li>   
                    <li><a href="Login.jsp">Log in</a></li>                   
                </ul>
            </nav>  
        </div>

        <div id="wrapper">
            <h1>Boek toevoegen</h1>
            <form action="BoekToevoegen" method="POST">
                <table>
                    <tbody>
                        <tr>
                            <td>Titel: </td>
                            <td><input type="text"  name="Titel" ></td>
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
                                <select>
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
                            <td><input type="text"  name="Omschrijving" ></td>
                        </tr>
                        <tr>
                            <td>Foto toevoegen:</td>
                            <td><input type="file"  name="BoekenFoto" ></td>
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


