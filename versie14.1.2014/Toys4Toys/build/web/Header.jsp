<%@page import="Services.PersoonService"%>
<%@page import="dal.Persoon"%>
<%
    String username = "";
    int id = 0;
    boolean ingelogd = false;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
         for (Cookie c : cookies) {
            if (c.getValue() != null && c.getName().equals("userT4T")) {
                Persoon pers = PersoonService.VindPersoon(c.getValue());
                username = pers.getUserName();
                id = pers.getId();
               // session.setAttribute("pers", p);
                ingelogd = true;
            }          
        }
    }
       
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Styles.css" rel="stylesheet" type="text/css"/>
        <link href='http://fonts.googleapis.com/css?family=Indie+Flower' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Josefin+Sans' rel='stylesheet' type='text/css'>
        
    </head>
    <body>

        <% if(username == ""){
            %>
            <a style="float: right;" id="user" href="Login.jsp">Inloggen</a>
        <%}
        else{%>
        <a style="float: right;" id="user" href="PersoonDetails?id=<%=id %>">Welkom  <%=username %>!</a>
        <%}%>
        <div id="logo"><h1>Toys 4 Toys</h1></div>
        <div style="width: 25%; float: right">
        <form method="POST" action="ZoekAlles" style="float:right" >
                <div>
                    <input placeholder="Zoek in het volledige aanbod" onclick="" type="text" name="zoekTerm" style="opacity: 0.8; width: 200px">
                    <input type="submit" value="Zoek" name="zoek">
                </div>
                    </form>
            </div>
        <div style="width: 25%">
            <nav>
                <ul>
                    <li><a href="Index.jsp">Home</a></li>
                    <li><a href="CatBabySelecteren">Baby Spullen</a></li>
                    <li><a href="CatBoekSelecteren">Boeken</a></li>
                    <li><a href="CatKlerenSelecteren">Kleren</a></li>
                    <li><a href="CatSpeelgoedSelecteren">Speelgoed</a></li>  
                    <li><a href="Login.jsp">Log in</a></li>                   
                </ul>
            </nav>
        </div>
    </body>
</html>
        