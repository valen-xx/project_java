

<%@page import="test44.mavenproject3.Model.Vehicules"%>
<%-- 
    Document   : index
    Created on : Oct 31, 2023, 2:20:01 PM
    Author     : GuercY PIERRE
--%>

<%
    Vehicules vehicules = (Vehicules) request.getAttribute("vehicule");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>modifier vehicules</title>
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
        <form action="${pageContext.request.contextPath}/VehiculesServlet" method="post">
            <p>
                <label for="ID">ID</label>
                <input type="number" readonly value="<%=vehicules != null ? vehicules.getID() : ""%>" name="ID">
            </p>
            <p>
                <label for="nomProprietaire">nom Proprietaire</label>
                <input type="text" value="<%=vehicules != null ? vehicules.getNomProprietaire() : ""%>" required name="nomProprietaire">
            </p>
            <p>
                <label for="prenomProprietaire">prenom Proprietaire</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getPrenomProprietaire() : ""%>" name="prenomProprietaire">
            </p>
            <p>
                <label for="Typedevehicule">Type de véhicule</label>
                <select type="text" required value="<%=vehicules != null ? vehicules.getTypedevehicule() : ""%>" name="Typedevehicule">
                    <option>Motocyclette</option>
                    <option>Voitures</option>
                    <option>Poids Lourds</option>
                </select>
            </p>
            <p>
                <label for="Marque">Marque</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getMarque() : ""%>" name="Marque">
            </p>
            <p>
                <label for="Modele">Modele</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getModele() : ""%>" name="Modele">
            </p>
            <p>
                <label for="NoMoteur">No Moteur</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getNoMoteur() : ""%>" name="NoMoteur">
            </p>
            <p>
                <label for="NbCylindre">Nb Cylindre</label>
                <input type="number" required value="<%=vehicules != null ? vehicules.getNbCylindre() : ""%>" name="NbCylindre">
            </p>
            <p>
                <label for="Couleur">Couleur</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getCouleur() : ""%>" name="Couleur">
            </p>
            <p>
                <label for="Plaqueimmatriculation">Plaque immatriculation</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getPlaqueimmatriculation() : ""%>" name="Plaqueimmatriculation">
            </p>
            <p>
                <label for="Telephoneproprietaire">Telephone proprietaire</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getTelephoneproprietaire() : ""%>" name="Telephoneproprietaire">
            </p>
            <p>
                <label for="Adresseproprietaire">Adresse proprietaire</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getAdresseproprietaire() : ""%>" name="Adresseproprietaire">
            </p>
            <p>
                <label for="typePiece">type Piece</label>
                <select type="text" required value="<%=vehicules != null ? vehicules.getTypePiece() : ""%>" name="typePiece">
                    <option>Licence</option>
                    <option>Cartes d'identifications</option>
                    <option>Passeport</option>
                </select>
            </p>
            <p>
                <label for="Nopiece">No piece</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getNopiece() : ""%>" name="Nopiece">
            </p>
            <p>
                <label for="Annees">Annees</label>
                <input type="date" required value="<%=vehicules != null ? vehicules.getAnnees() : ""%>" name="Annees">
            </p>
            <p>
                <label for="Courrielproprietaire">Courriel proprietaire</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getCourrielproprietaire() : ""%>" name="Courrielproprietaire">
            </p>
            <p>
                <label for="Typetransmission">Type transmission</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getTypetransmission() : ""%>" name="Typetransmission">
            </p>
            <p>
                <label for="Typeessence">Type essence</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getTypeessence() : ""%>" name="Typeessence">
            </p>
            <p>
                <label for="Photo">Photo</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getPhoto() : ""%>" name="Photo">
            </p>
            <p>
                <label for="Dateenregistrement">Date enregistrement</label>
                <input type="date" required value="<%=vehicules != null ? vehicules.getDateenregistrement() : ""%>" name="Dateenregistrement">
            </p>
            <p>
                <label for="Alerte">Alerte</label>
                <input type="text" required value="<%=vehicules != null ? vehicules.getAlerte() : ""%>" name="Alerte">
            </p>
            <p>
                <label for="Datealerte">Date alerte</label>
                <input type="date" required value="<%=vehicules != null ? vehicules.getDatealerte() : ""%>" name="Datealerte">
            </p>
            <p>

                <input type="submit" name="action" value="MODIFIER">
            </p>
        </form>

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
