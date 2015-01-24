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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 11627
 */
public class DisplayImage extends HttpServlet {
    


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
        
        byte[] imgbaby = BabyService.SelectFoto(Integer.parseInt(request.getParameter("id")));
        byte[] imgboek = BoekService.SelectFoto(Integer.parseInt(request.getParameter("id")));
        byte[] imgkleren = KlerenService.SelectFoto(Integer.parseInt(request.getParameter("id")));
        byte[] imgspeelgoed = SpeelgoedService.SelectFoto(Integer.parseInt(request.getParameter("id")));
        
        
        if (imgbaby == null) {
            
             if (imgboek == null) {
                if (imgkleren == null) {
                    if (imgspeelgoed == null) {
                        
                        response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
                        
                    }
                    else{
                    
                    response.reset();
                    response.setContentType("image/jpeg");
                    response.setContentLength(imgspeelgoed.length);
        
                    response.getOutputStream().write(imgspeelgoed);
                }
                }
                else{
                    response.reset();
                    response.setContentType("image/jpeg");
                    response.setContentLength(imgkleren.length);
        
                    response.getOutputStream().write(imgkleren);
                }
            }
            else{
                response.reset();
                response.setContentType("image/jpeg");
                response.setContentLength(imgboek.length);        
                response.getOutputStream().write(imgboek);
            }            
        }
        else{
        
        response.reset();
        response.setContentType("image/jpeg");
        response.setContentLength(imgbaby.length);
        
        response.getOutputStream().write(imgbaby);
        
    }
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0); // Proxies.
        
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
