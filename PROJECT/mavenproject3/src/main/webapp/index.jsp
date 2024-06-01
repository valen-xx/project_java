<%-- 
    Document   : ajouter
    Created on : Nov 1, 2023, 7:58:20 PM
    Author     : valen
--%>
<%@page import="test44.mavenproject3.Model.Vehicules"%>
<%@page import="java.util.List"%>
<%@ page import="test44.mavenproject3.Model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    User user = (User) session.getAttribute("user");

    if (user != null) {
        // User is logged in, you can access user information
        String username = user.getUsername();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index</title>
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
                            <a href="${pageContext.request.contextPath}/ajouter.jsp" class="nav-item nav-link">Gestions des vehicules</a>
                            <a href="${pageContext.request.contextPath}/index.transfer.jsp" class="nav-item nav-link">Gestions des transfert</a>
                            <a href="${pageContext.request.contextPath}/index.alertes.jsp" class="nav-item nav-link">Gestions des alertes</a>

                            <a href="${pageContext.request.contextPath}/logout.jsp" class="nav-item nav-link">logout</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
                           
    
        <div class="container-fluid p-0" style="margin-bottom: 90px;">
            <div id="header-carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="static/img/carousel-1.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <h4 class="text-white text-uppercase mb-md-3">OAVCT VOITURE</h4>
                                <h1 class="display-1 text-white mb-md-4">ASSURER VOTRE VOITURE</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 mt-2">RESERVE MAINTENANT</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="static/img/carousel-2.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <h4 class="text-white text-uppercase mb-md-3">OAVCT VOITURE</h4>
                                <h1 class="display-1 text-white mb-md-4">ASSURER VOTRE VOITURE</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 mt-2">RESERVE MAINTENANT</a>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                    <div class="btn btn-dark" style="width: 45px; height: 45px;">
                        <span class="carousel-control-prev-icon mb-n2"></span>
                    </div>
                </a>
                <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                    <div class="btn btn-dark" style="width: 45px; height: 45px;">
                        <span class="carousel-control-next-icon mb-n2"></span>
                    </div>
                </a>
            </div>
        </div>        
    </body>


    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="static/lib/easing/easing.min.js"></script>
    <script src="static/lib/waypoints/waypoints.min.js"></script>
    <script src="static/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="static/lib/tempusdominus/js/moment.min.js"></script>
    <script src=static/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="static/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <script src="static/js/main.js"></script>
</html>

<%
    } else {
        // User is not logged in, you can redirect to the login page or take appropriate action
        response.sendRedirect("login.jsp");
    }
%>