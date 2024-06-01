<%-- 
    Document   : action0
    Created on : Nov 10, 2023, 7:11:35 AM
    Author     : valen
--%>
<%@page import="test44.mavenproject3.Model.Transfert"%>
<%@page import="test44.mavenproject3.Servicesimpl.TransfertDao" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

                            <a href="${pageContext.request.contextPath}/action.jsp" class="nav-item nav-link">AFFICHER ,MODIFIER ,SUPPRIMER</a>



                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <table width="50%">
            <form>
                <tr>
                    <th>Id</th>
                    <th>Nouveau Nom</th>
                    <th>Nouveau Prenom</th>
                    <th>sexe</th>
                    <th>Telephone</th>
                    <th>Adresse</th>
                    <th>TypePiece</th>
                    <th>Numero Piece</th>
                    <th>Motif Transaction</th>
                    <th>Date Transfert</th>
                    <th>Etat</th>
                    <th>Action</th>
                </tr>
                
                <%
         
                List<Transfert> lst = null;
                TransfertDao vd = new TransfertDao();
                lst = vd.getAll();
                if (lst != null) {
                  for (Transfert tr : lst) {

                %>

                <tr>  
                    <td><%=tr.getId()%></td>
                    <td><%=tr.getNouveauNom()%></td>
                    <td><%=tr.getNouveauPrenom()%></td>
                    <td><%=tr.getSexe()%></td>
                    <td><%=tr.getTelephone()%></td>
                    <td><%=tr.getAdresse()%></td>
                    <td><%=tr.getTypePiece()%></td>
                    <td><%=tr.getNoPiece()%></td>
                    <td><%=tr.getMotifTransaction()%></td>
                    <td><%=tr.getDateTransfert()%></td>
                    <td><%=tr.getEtat()%></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/TransfertServlets?id=<%=tr.getId()%>&action=chercher">MODIFIER</a>
                    </td>    
                </tr>
                <%}}%>
            </form>
        </table>


        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="static/lib/easing/easing.min.js"></script>
        <script src="static/lib/waypoints/waypoints.min.js"></script>
        <script src="static/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="static/lib/tempusdominus/js/moment.min.js"></script>
        <script src=static/lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="static/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <script src="static/js/main.js"></script>
    </body>
</html>
