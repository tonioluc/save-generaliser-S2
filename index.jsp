<%@ page import="zavam.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%
    Vector vect = new Vector();
    Olona a = new Olona();
    Saka b = new Saka();
    Alika c = new Alika();
    Sovaly d = new Sovaly();
    Avion e = new Avion();
    Maison f = new Maison();
    vect.add(f);
    vect.add(a);
    vect.add(b);
    vect.add(c);
    // vect.add(d);
    vect.add(e);
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/perso.css">
    <title>Document</title>
</head>
<body>
    <div class="container ">
    <div class="col-md-3">
    <%-- Colonne vide --%>
    </div>
        <div class="row center-block jumbotron col-md-6">
            <div class="row text-center">
                <h2>Choix de formulaire</h2>
            </div>
            <br>
            <form action="formulaire.jsp" method="post">
                <div class="form-group">
                    <div class="row">
                        <label for="choices">Choississez : </label>
                        <select class="form-control" name="classe" id="choices">
                            <% for(int i=0;i<vect.size();i++) { %>
                                <option value="<% out.print(vect.get(i).getClass().getName()) ;%>"><% out.print(vect.get(i).getClass().getName().substring(vect.get(i).getClass().getName().indexOf(".")+1));%></option>
                            <% } %>
                        </select>
                    </div>
                    <br>
                    <div class="row">
                        <input type="submit" class="btn btn-primary" value="Create formulaire">
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-3">
        <%-- Colonne vide --%>
        </div>
    </div>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>