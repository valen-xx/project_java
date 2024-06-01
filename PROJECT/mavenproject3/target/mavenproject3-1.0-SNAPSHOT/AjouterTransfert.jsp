<%-- 
    Document   : AjouterTransfert.jsp
    Created on : Nov 6, 2023, 11:37:25 AM
    Author     : valen
--%>


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
                    <a href="index.jsp" class="navbar-brand">
                        <h1 class="text-uppercase text-primary mb-1">OAVCT PROJECT</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                        <div class="navbar-nav ml-auto py-0">
                            <a href="index.jsp" class="nav-item nav-link active">Home</a>
                            <a href="${pageContext.request.contextPath}/AjouterTransfert.jsp" class="nav-item nav-link">AJOUTER TRANSFERT DE PROPRIETAIRE</a>
                            <a href="${pageContext.request.contextPath}/action0.jsp" class="nav-item nav-link">AFFICHER ,MODIFIER ,SUPPRIMER</a>

                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <hr>
        <form action="${pageContext.request.contextPath}/TransfertServlets" method="post">
            Id Transfert                : <input type="number" name="Id"><br><br>
            ID Vehicule                 : <input type="number" placeholder="ENTRER L'ID MANUELLEMENT" name="ID"><br><br>
            Nouveau Nom Proprietaire    : <input type="text" name="NouveauNom"><br><br>
            Nouveau Prenom Proprietaire : <input type="text" name="NouveauPrenom"><br><br>
            Sexe                        : <input type="text" name="sexe"><br><br>
            Telephone                   : <input type="text" name="Telephone"><br><br>
            Adresse                     : <input type="text" name="Adresse"><br><br>
            Type Piece                  : <select type="text" name="TypePiece">
                <option>Licence</option>
                <option>Carte identite</option>
                <option>Passeport</option>
            </select><br><br>
            Numero piece                : <input type="text" name="NoPiece"><br><br>
            Motif Transfert             : <input type="text" name="MotifTransaction"><br><br>
            Date Transfert              : <input type="date" name="DateTransfert"><br><br>
            Etat                        : <select name="Etat" type="text">
                <option>A</option>
                <option>N</option>
                <option>E</option>
            </select><br><br>
            <input type="submit" name="action" value="ENREGISTRER">
        </form>
        <hr>

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

