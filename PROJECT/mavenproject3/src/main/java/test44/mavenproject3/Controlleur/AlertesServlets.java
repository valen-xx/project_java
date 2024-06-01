/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package test44.mavenproject3.Controlleur;
import test44.mavenproject3.Model.Alertes;
import test44.mavenproject3.Servicesimpl.AlerteDao;
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
public class AlertesServlets extends HttpServlet {

    AlerteDao Adao = new AlerteDao();

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
            out.println("<title>Servlet AlertesServlets</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AlertesServlets at " + request.getContextPath() + "</h1>");
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
                    Alertes alertes = Adao.get(id);
                    if (alertes == null) {
                        Lister(request, response);
                    } else {
                        request.setAttribute("Alerte", alertes);
                        request.getRequestDispatcher("/ModifierAlertes.jsp").forward(request, response);
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
        Save(request, response);
    }

    protected void Save(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Alertes alertes = new Alertes();
        alertes.setAlertes(request.getParameter("Alertes"));
        alertes.setLieuDincident(request.getParameter("LieuDincident"));
        alertes.setDateDincident(request.getParameter("DateDincident"));
        alertes.setDeclarations(request.getParameter("Declarations"));
        alertes.setDescription(request.getParameter("Description"));
        String id = request.getParameter("id");
        if (id == null || id.isEmpty()) {
            if (Adao.save(alertes) > 0) {
                Lister(request, response);
            } else {
                request.getRequestDispatcher("/ajouterAlertes.jsp").forward(request, response);
            }
        } else {
            if (Adao.update(alertes) > 0) {
                Lister(request, response);
            } else {
                request.getRequestDispatcher("/ModifierAlertes.jsp").forward(request, response);
            }
        }
    }

    private void Lister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Alertes> liste = Adao.getAll();
        request.setAttribute("liste", liste);
        request.getRequestDispatcher("/index.alertes.jsp").forward(request, response);
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
