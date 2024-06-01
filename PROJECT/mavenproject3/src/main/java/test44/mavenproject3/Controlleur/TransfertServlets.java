/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package test44.mavenproject3.Controlleur;

import test44.mavenproject3.Model.Transfert;
import test44.mavenproject3.Model.Vehicules;
import test44.mavenproject3.Servicesimpl.TransfertDao;
import test44.mavenproject3.Servicesimpl.VehiculesDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 *
 * @author valen
 */
public class TransfertServlets extends HttpServlet {

    TransfertDao Tdao = new TransfertDao();
    VehiculesDao vdao = new VehiculesDao();

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TransfertServlets</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TransfertServlets at " + request.getContextPath() + "</h1>");
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
                    Transfert transferts = Tdao.get(id);
                    if (transferts == null) {
                        Lister(request, response);
                    } else {
                        request.setAttribute("transfert", transferts);
                        request.getRequestDispatcher("/MTransfert.jsp").forward(request, response);

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

    protected void SaveOrUpdate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Transfert transfert = new Transfert();
        
        transfert.setNouveauNom(request.getParameter("NouveauNom"));
        transfert.setNouveauPrenom(request.getParameter("NouveauPrenom"));
        transfert.setSexe(request.getParameter("sexe"));
        transfert.setTelephone(request.getParameter("Telephone"));
        transfert.setAdresse(request.getParameter("Adresse"));
        transfert.setTypePiece(request.getParameter("TypePiece"));
        transfert.setNoPiece(request.getParameter("NoPiece"));
        transfert.setMotifTransaction(request.getParameter("MotifTransaction"));
        transfert.setDateTransfert(request.getParameter("DateTransfert"));
        transfert.setEtat(request.getParameter("Etat"));
        String id = request.getParameter("id");
        String alertes = request.getParameter("Alerte");
        String vehiculeIdString = request.getParameter("ID");
        Vehicules vehicule = new Vehicules();
        vehicule.setAlerte("oui");
        request.setAttribute("vehicule", vehicule);
        if (id == null || id.isEmpty()) {    
            if ("oui".equalsIgnoreCase(vehicule.getAlerte())) {
                if (Tdao.save(transfert) > 0) {
                    Lister(request, response);
                } else {
                    request.getRequestDispatcher("/AjouterTransfert.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("/AjouterTransfert.jsp").forward(request, response);
            }
        } else {
            if (Tdao.update(transfert) > 0) {
                Lister(request, response);
            } else {
                request.getRequestDispatcher("/MTransfert.jsp").forward(request, response);
            }
        }
    }

    protected void Lister(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Transfert> liste = Tdao.getAll();
        request.setAttribute("liste", liste);
        request.getRequestDispatcher("/index.transfer.jsp").forward(request, response);
    }

}
