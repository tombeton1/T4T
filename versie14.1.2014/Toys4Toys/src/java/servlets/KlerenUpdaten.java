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
import java.io.InputStream;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;

/**
 *
 * @author Véronique
 */
@MultipartConfig
public class KlerenUpdaten extends HttpServlet {

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
        
         Cookie[] cookies = request.getCookies();

        for (Cookie c : cookies) {
            if (c.getName().equals("userT4T") && c.getValue() != null) {
                

        Persoon p = PersoonService.VindPersoon(c.getValue());
        Kleren k = new Kleren();
        
        
        k.setId(Integer.parseInt(request.getParameter("id")));
        k.setSoortKleding(request.getParameter("Soort"));
        k.setGeslacht(Boolean.parseBoolean(request.getParameter("Geslacht")));
        k.setOmschrijving(request.getParameter("Omschrijving"));
        k.setSeizoen(request.getParameter("Seizoen"));
        k.setMaat(request.getParameter("Maat"));
        k.setPersoon(p);
        
        Part filePart = request.getPart("upfileKleren"); 
        String fileName = filePart.getSubmittedFileName();
        InputStream fileContent = filePart.getInputStream();
        byte[] bytes = IOUtils.toByteArray(fileContent);
        
        if (bytes.length == 0) {
                   byte[] imgKleren = KlerenService.SelectFoto(Integer.parseInt(request.getParameter("id")));
                   k.setKlerenFoto(imgKleren);
                }
                else{
                    k.setKlerenFoto(bytes);
                }
        
        KlerenService.KlerenUpdate(Integer.parseInt(request.getParameter("id")),k);
        
        
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

        RequestDispatcher dispatcher = request.getRequestDispatcher("PersoonDetailOverzicht.jsp");
        dispatcher.forward(request, response);
    }
            else{
                    request.getSession();                                        
                    RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
                    dispatcher.forward(request, response);
                }
    }
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
