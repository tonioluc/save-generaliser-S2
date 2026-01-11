<%@ page import="fonctions.*" %>
<%@ page import="zavam.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.String" %>
<%@ page import="java.lang.reflect.Field" %>

<%
    String nomClasse =request.getParameter("classe");
    String[] hidden = {""};// les champs à cacher.
    Champ champ = new Champ(nomClasse);
    champ.setHidden(hidden);
    champ.getFields(); //obtenir tous les attributs de la classe choisie par l'user
    champ.setOrdre("etage",0); //mettre l'attribut etage à la première place
    Vector<Field> fields = champ.getSett();
    // champ.setOrdre("logement",0);
    String[] listeDeroulante = {"Table","Chaise","TV"};
    HashMap<String , String[]> map = new HashMap<String , String[]>();
    map.put("meuble",listeDeroulante);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/perso.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="col-md-2">
            <%-- Colonne vide --%>
        </div>
                
        <div class="row center-block jumbotron col-md-8">
            <div class="row text-center">
                <h2>Formulaire pour <% out.print(nomClasse.substring(nomClasse.indexOf(".")+1).toLowerCase());%> : </h2>
            </div>
            <br>
            <form class="form-group" action="traitement-save.jsp?className=<% out.print(nomClasse);%>" method="post">
                <%
                    for(int i=0;i<fields.size();i++) {
                        if(map.containsKey(fields.get(i).getName())) { %>
                            <div class="row">
                                <label class="col-md-4" for="choices"><% out.print(fields.get(i).getName());%> :  </label>
                                    <select class="" name="<% out.print(fields.get(i).getName());%>" id="choices">
                                        <% for(String string : map.get(fields.get(i).getName())) { %>
                                            <option value="<% out.print(string) ;%>"><% out.print(string);%></option>
                                        <% } %>
                                    </select>
                            </div>
                        <% } else {
                        if(fields.get(i).getType().equals(boolean.class)) {  %>
                            <p>
                                <div class="row">
                                    <span class="col-md-4">
                                        <strong>
                                            <% out.print(fields.get(i).getName());%> :
                                        </strong>
                                    </span>
                                    <label class="radio-inline" for="oui">
                                        <input required type="radio" id="oui" name="<% out.print(fields.get(i).getName());%>" value="Oui">Oui
                                    </label>
                                    <label required class="radio-inline" for="Non">
                                        <input type="radio" id="non" name="<% out.print(fields.get(i).getName());%>" value="Non">Non
                                    </label>
                                </div>
                            </p>
                        <% } else if(fields.get(i).getType().equals(int.class) || fields.get(i).getType().equals(Integer.class) || fields.get(i).getType().equals(double.class)) { %>
                            <p>
                                <div class="row">
                                    <label class="col-md-4" for="textField"><% out.print(fields.get(i).getName());%> : </label>
                                    <input required class="col-md-8" min="0" type="number" name="<% out.print(fields.get(i).getName());%>" id="textField">
                                </div>
                            </p>
                        <% } else if(fields.get(i).getType().equals(Date.class)) { %>
                            <p>
                                <div class="row">
                                    <label class="col-md-4" for="textField"><% out.print(fields.get(i).getName());%> : </label>
                                    <input required class="col-md-8" min="0" type="date" name="<% out.print(fields.get(i).getName());%>" id="textField">
                                </div>
                            </p>
                            
                        <% } else { %>
                            <p>
                                <div class="row">
                                    <label class="col-md-4" for="textField"><% out.print(fields.get(i).getName());%> : </label>
                                    <input required class="col-md-8" type="text" name="<% out.print(fields.get(i).getName());%>" id="textField">
                                </div>
                            </p>
                <% } } } %>
                <div class="row text-right">
                    <input required class="btn btn-success" type="submit" value="SAVE">
                </div>
            </form>
            <p>
                <a href="index.jsp">>>Retour</a>
            </p>
        </div>
        <div class="col-md-2">
            <%-- Colonne vide --%>
        </div>
    </div>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>"