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

        <script>
            function isNumberKey(evt) {
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if (charCode > 31 && (charCode < 48 || charCode > 57))
                    return false;
                return true;
            }
        </script>
    </head>
    <body>

        <div id="logo"><h1>Toys4Toys</h1>
            <h4>Makkelijk ruilen van speelgoed, kleren, boeken voor kinderen </h4></div>


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


        <div id="wrapper">
            <h1>Babyspulletjes toevoegen</h1>
            <form action="BabyToevoegen" method="POST">
                <table>
                    <tbody>
                        <tr>
                            <td>Geef een korte naam:</td>
                            <td><input type="text" name="Titel"></td>
                        </tr>

                        <tr>
                            <td>Geslacht: </td>
                            <td><select>
                                    <option value='1' name="Geslacht">jongen</option>
                                    <option value='0' name="Geslacht">meisje</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Leeftijd (vanaf): </td>
                            <<td><input type="text"  name="Leeftijd" size=20 maxlength=2 onkeypress='return isNumberKey(event)'></td> 

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
                            <td><input type="text"  name="Omschrijving" ></td>
                        </tr>
                        <tr>
                            <td>Foto toevoegen:</td>
                            <td><input type="file"  name="BabyFoto" ></td>
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

