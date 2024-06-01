/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package test44.mavenproject3.Controlleur;

import test44.mavenproject3.Model.Vehicules;
import test44.mavenproject3.Servicesimpl.VehiculesDao;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author valen
 */
public class VehiculesServlet extends HttpServlet {

    VehiculesDao dao = new VehiculesDao();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet VehiculesServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VehiculesServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        if (action == null) {
            Lister(request, response);
        } else {
            switch (action) {
                case "chercher":
                    Vehicules vehicules = dao.get(id);
                    if (vehicules == null) {
                        Lister(request, response);
                    } else {
                        request.setAttribute("vehicule", vehicules);
                        request.getRequestDispatcher("/modifier.jsp").forward(request, response);
                    }
                    break;
                case "delete":
                    if (dao.get(id) != null) {
                        dao.delete(id);
                        Lister(request, response);
                    } else {
                        Lister(request, response);
                    }
                    break;
                default:
                    Lister(request, response);
            }
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SaveOrUpdate(request, response);
//        Lister(request,response);
    }

    protected void SaveOrUpdate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Vehicules vehicule = new Vehicules();
        vehicule.setNomProprietaire(request.getParameter("nomProprietaire"));
        vehicule.setPrenomProprietaire(request.getParameter("prenomProprietaire"));
        vehicule.setTypedevehicule(request.getParameter("Typedevehicule"));
        vehicule.setMarque(request.getParameter("Marque"));
        vehicule.setModele(request.getParameter("Modele"));
        vehicule.setNoMoteur(request.getParameter("NoMoteur"));
        if (request.getParameter("NbCylindre") != null) {
            vehicule.setNbCylindre(Integer.parseInt(request.getParameter("NbCylindre")));
        }
        vehicule.setCouleur(request.getParameter("Couleur"));
        vehicule.setPlaqueimmatriculation(request.getParameter("Plaqueimmatriculation"));
        vehicule.setTelephoneproprietaire(request.getParameter("Telephoneproprietaire"));
        vehicule.setAdresseproprietaire(request.getParameter("Adresseproprietaire"));
        vehicule.setTypePiece(request.getParameter("typePiece"));
        vehicule.setNopiece(request.getParameter("Nopiece"));
        vehicule.setAnnees(request.getParameter("Annees"));
        vehicule.setCourrielproprietaire(request.getParameter("Courrielproprietaire"));
        vehicule.setTypetransmission(request.getParameter("Typetransmission"));
        vehicule.setTypeessence(request.getParameter("Typeessence"));
        vehicule.setPhoto(request.getParameter("Photo"));
        vehicule.setDateenregistrement(request.getParameter("Dateenregistrement"));
        vehicule.setAlerte(request.getParameter("Alerte"));
        vehicule.setDatealerte(request.getParameter("Datealerte"));
        String id = request.getParameter("id");
        if (id == null || id.isEmpty()) {
            if (dao.save(vehicule) > 0) {
                Lister(request, response);
            } else {
                request.getRequestDispatcher("/ajouter.jsp").forward(request, response);
            }
        } else {
            vehicule.setID(Integer.parseInt(id));
            if (dao.update(vehicule) > 0) {
                Lister(request, response);
            } else {
                request.getRequestDispatcher("/modifier.jsp").forward(request, response);
            }
        }
    }

    
    private void Lister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Vehicules> liste = dao.getAll();
        System.out.println(liste+"hello");
        request.setAttribute("liste", liste);
        request.getRequestDispatcher("/action.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
