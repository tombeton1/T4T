/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlets;

import Services.BabyService;
import Services.BoekService;
import Services.KlerenService;
import Services.SpeelgoedService;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 11627
 */
public class ZoekAlles extends HttpServlet {

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
        
        List<BabyService> alleszoeken1 = BabyService.ZoekBaby(request.getParameter("zoekTerm"));
        List<BoekService> alleszoeken2 = BoekService.ZoekBoek(request.getParameter("zoekTerm"));
        List<KlerenService> alleszoeken3 = KlerenService.ZoekKleren(request.getParameter("zoekTerm"));      
        List<SpeelgoedService> alleszoeken4 = SpeelgoedService.ZoekSpeelgoed(request.getParameter("zoekTerm"));
        
        request.getSession().setAttribute("vm1", alleszoeken1);
        request.getSession().setAttribute("vm2", alleszoeken2);
        request.getSession().setAttribute("vm3", alleszoeken3);
        request.getSession().setAttribute("vm4", alleszoeken4);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("GezochtOverzicht.jsp");
        dispatcher.forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
