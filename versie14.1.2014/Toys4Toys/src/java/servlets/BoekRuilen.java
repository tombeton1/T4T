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
 * @author Eric
 */
public class BoekRuilen extends HttpServlet {

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
        
        
        Cookie[] cookies = request.getCookies();

        for (Cookie c : cookies) {
            if (c.getName().equals("userT4T") && c.getValue() != null) {
                

        Persoon p = PersoonService.VindPersoon(c.getValue());
        int pId = p.getId();
        
        
         List<Boeken> b = BoekService.AlleAdsOphalenperUser(pId);
         List<Babyspullen> ba = BabyService.AlleAdsOphalenPerUser(pId);
         List<Kleren> k = KlerenService.AlleAdsOphalenPerUser(pId);
         List<Speelgoed> s = SpeelgoedService.AlleAdsOphalenPerUser(pId);
        
         List<Boeken> boek = BoekService.SelecteerBoek(Integer.parseInt(request.getParameter("id")));

         request.getSession().setAttribute("vm5", boek);
        
         request.getSession().setAttribute("vm1", b);
         request.getSession().setAttribute("vm2", ba);
         request.getSession().setAttribute("vm3", k);
         request.getSession().setAttribute("vm4", s);
        
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("BoekRuilen.jsp");
        dispatcher.forward(request, response);
    }
            else{
                    request.getSession();                                        
                    RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
                    dispatcher.forward(request, response);
                }
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
