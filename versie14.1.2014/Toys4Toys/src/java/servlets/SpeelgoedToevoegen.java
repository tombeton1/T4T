/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Services.PersoonService;
import Services.SpeelgoedService;
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
public class SpeelgoedToevoegen extends HttpServlet {

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
                                                    
        boolean foundCookie;

        for (Cookie c : cookies) {
            if (c.getName().equals("user"))
            {
                
                String st = c.getValue();
                foundCookie = true;
                if (foundCookie) 
                {
   
                    Persoon p = PersoonService.VindPersoon(st);
        Speelgoed s = new Speelgoed();
        
        
        s.setGeslacht(Boolean.parseBoolean(request.getParameter("Geslacht")));
        s.setSpeelgoedFoto(request.getParameter("SpeelgoedFoto").getBytes());
        s.setTitel(request.getParameter("Titel"));
        s.setOmschrijving(request.getParameter("Omschrijving"));
        s.setPersoon(p);
        s.setLeeftijd(Integer.parseInt(request.getParameter("Leeftijd")));
        s.setCategorie(request.getParameter("Categorie"));
        
        
        
        SpeelgoedService.SpeelgoedAdd(s);
        
        List<SpeelgoedService> speelgoed = SpeelgoedService.AlleSpeelgoedOphalen();
        
        request.getSession().setAttribute("vm", speelgoed);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("SpeelgoedOverzicht.jsp");
        dispatcher.forward(request, response);
    }
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
