<%-- 
    Document   : index.alertes.jsp
    Created on : Nov 6, 2023, 10:18:45 PM
    Author     : GuercY PIERRE
--%>
<%@page import="test44.mavenproject3.Model.Vehicules"%>
<%@page import="test44.mavenproject3.Model.Alertes"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index alertes</title>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="static/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="static/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="static/css/bootstrap.min.css" rel="stylesheet">
        <link href="static/css/style.css" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid bg-dark py-3 px-lg-5 d-none d-lg-block">
            <div class="row">
                <div class="col-md-6 text-center text-lg-left mb-2 mb-lg-0">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-body pr-3" href=""><i class="fa fa-phone-alt mr-2"></i>+509 49089050</a>
                        <span class="text-body">|</span>
                        <a class="text-body px-3" href=""><i class="fa fa-envelope mr-2"></i>valentinstanley0@gmail.com</a>
                    </div>
                </div>
                <div class="col-md-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-body px-3" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-body px-3" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-body px-3" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-body px-3" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="text-body pl-3" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid position-relative nav-bar p-0">
            <div class="position-relative px-lg-5" style="z-index: 9;">
                <nav class="navbar navbar-expand-lg bg-secondary navbar-dark py-3 py-lg-0 pl-3 pl-lg-5">
                    <a href="" class="navbar-brand">
                        <h1 class="text-uppercase text-primary mb-1">OAVCT PROJECT</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                        <div class="navbar-nav ml-auto py-0">
                            <a href="index.jsp" class="nav-item nav-link active">Home</a>
                            <a href="${pageContext.request.contextPath}/ajouterAlertes.jsp" class="nav-item nav-link">AJOUTER UNE ALERTE</a>
                            <a href="${pageContext.request.contextPath}/action1.jsp" class="nav-item nav-link">AFFICHER ,MODIFIER ,SUPPRIMER</a>
                           
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <a href="${pageContext.request.contextPath}/ajouterAlertes.jsp">AJOUTER UNE ALERTE</a>
        <hr>
        <table width="50%">
            <from>

                <tr>
                    <th>ID ALERTES</th>
                    <th>TYPE ALERTES</th>
                    <th>LIEU D'IMCIDENT</th>
                    <th>HEURE D'INCIDENT</th>
                    <th>DECLARANT</th>
                    <th>DESCRIPTION</th>
                    <th>ACTION(s)</th>
                </tr>     
                <%
                    List<Vehicules> lst = (List<Vehicules>) request.getAttribute("liste");
                    List<Alertes> lsta = (List<Alertes>) request.getAttribute("liste");
                    if (lsta != null) {
                        if (!lsta.isEmpty()) {
                            for (Alertes Alt : lsta) {   
                %>
                <tr>
                    <td><%= Alt.getId()%></td>
                    <td><%= Alt.getAlertes()%></td>
                    <td><%= Alt.getLieuDincident()%></td>
                    <td><%= Alt.getDateDincident()%></td>
                    <td><%= Alt.getDeclarations()%></td>
                    <td><%= Alt.getDescription()%></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/AlertesServlets?id=<%= Alt.getId()%>&action=chercher">MODIFIER</a>
                    </td>
                </tr>
                <%}}}%>    
            </from>
        </table>
    </body>
</html>