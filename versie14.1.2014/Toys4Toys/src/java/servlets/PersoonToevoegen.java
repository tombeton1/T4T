/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Services.BabyService;
import Services.BoekService;
import Services.KlerenService;
import Services.PersoonService;
import Services.SpeelgoedService;
import dal.Babyspullen;
import dal.Boeken;
import dal.Kleren;
import dal.Persoon;
import dal.Speelgoed;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Véronique
 */
public class PersoonToevoegen extends HttpServlet {

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
        
        Persoon p = new Persoon();
        
        p.setAanspreekTitel(request.getParameter("Aanspreektitel"));
        p.setVoornaam(request.getParameter("Voornaam"));
        p.setFamilienaam(request.getParameter("Familienaam"));
        p.setWoonPlaats(request.getParameter("Woonplaats"));
        p.setEmail(request.getParameter("Email"));
        p.setUserName(request.getParameter("Username"));
        p.setPassWord(request.getParameter("Wachtwoord"));
        
        PersoonService.PersoonAdd(p);
        
        Cookie c = new Cookie("userT4T",request.getParameter("Username"));
        c.setMaxAge(-1);
        response.addCookie(c);
        
        int pId = p.getId();
        
        
         List<Boeken> bUser = BoekService.AlleAdsOphalenperUser(pId);
         List<Babyspullen> baUser = BabyService.AlleAdsOphalenPerUser(pId);
         List<Kleren> kUser = KlerenService.AlleAdsOphalenPerUser(pId);
         List<Speelgoed> sUser = SpeelgoedService.AlleAdsOphalenPerUser(pId);
        
         List<Persoon> pers = PersoonService.SelecteerPersoon(pId);

         request.getSession().setAttribute("vm5", pers);
        
         request.getSession().setAttribute("vm1", bUser);
         request.getSession().setAttribute("vm2", baUser);
         request.getSession().setAttribute("vm3", kUser);
         request.getSession().setAttribute("vm4", sUser);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
        dispatcher.forward(request, response);
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
