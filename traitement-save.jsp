<%@ page import="zavam.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.String" %>

<%
    String nomClasse =request.getParameter("className");

    Vector<String> input=new Vector<>();
    Vector<String> fieldName = new Vector<>();
    Enumeration<String> paramNames = request.getParameterNames();
    while(paramNames.hasMoreElements()) {
        String paramName = paramNames.nextElement();
        if(request.getParameter(paramName).equals(nomClasse)) {
            continue;
        }
        fieldName.add(paramName);
        String paramValue = request.getParameter(paramName);
        input.add(paramValue);
    }
    String catalinaBase = System.getProperty("catalina.base");
    String saveDir = catalinaBase + java.io.File.separator + "webapps" + java.io.File.separator + "1-save" + java.io.File.separator + "save-files";
    String simpleName = nomClasse;
    int idx = (nomClasse != null) ? nomClasse.indexOf(".") : -1;
    if (idx >= 0) simpleName = nomClasse.substring(idx + 1);
    String fileName = saveDir + java.io.File.separator + simpleName + ".txt";
    Save sauver = new Save();
    sauver.sauvegarde(fileName,input,fieldName);
    response.sendRedirect("index.jsp");
%>