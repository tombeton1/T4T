<%-- 
    Document   : Overzicht
    Created on : 26-dec-2014, 13:31:06
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <title>Overzicht</title>
    </head>
    <body style="margin: 15px">
        <h1>Toys for Toys</h1>
        <h3>Maak uw keuze:</h3>
        
        
        <table rules="groups" class="table" style="width: 33%">
            <tr>
                <th>Categorie</th>
            </tr>
            <tr><td>Boeken</td><td align="right"><a class="btn btn-primary btn-sm" href="CatBoekSelecteren"> Selecteer </a></td></tr>
            <tr><td>Baby</td><td align="right"><a class="btn btn-primary btn-sm" href="CatBabySelecteren"> Selecteer </a></td></tr>
            <tr><td>Kleren</td><td align="right"><a class="btn btn-primary btn-sm" href="CatKlerenSelecteren"> Selecteer </a></td></tr>
            <tr><td>Speelgoed</td><td align="right"><a class="btn btn-primary btn-sm" href="CatSpeelgoedSelecteren"> Selecteer </a></td></tr>
        </table>
        <br/>
        <br/>
        
        Of gebruik de zoekfunctie:
        <form method="POST" action="ZoekAlles">
                <div>
                    <input type="text" name="zoekTerm" value="...?">
                    <input type="submit" value="Zoek" name="zoek">
                    
        </form>
        <br/>
        <br/>
                </div>
        
      <!-- LINK NAAR HOMEPAGE  <a href="OverzichtCat.jsp" class="btn btn-primary btn-sm">HOME</a> -->
        
    </body>
</html>
