package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            public class Persoon {

                String Url = "jdbc:mysql://localhost:3307/toys4toysdb";
                String UserName = "root";
                String PassWord = "usbw";

                Connection conn = null;
                PreparedStatement selectPersoon = null;
                ResultSet resultSet = null;

                public Persoon() {
                    try {
                        conn = DriverManager.getConnection(Url, UserName, PassWord);

                        selectPersoon = conn.prepareStatement(
                                "SELECT AanspreekTitel,Voornaam, Familienaam, Email, WoonPlaats FROM Persoon");
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }

                public ResultSet getPersoon() {
                    try {
                        resultSet = selectPersoon.executeQuery();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    return resultSet;
                }
            }
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
 Class.forName("com.mysql.jdbc.Driver");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Toys4Toys View</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Toys4Toys View</h1>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            Persoon persoon = new Persoon();
            ResultSet personen = persoon.getPersoon();
        
      out.write("\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Aanspreek Titel</td>\n");
      out.write("                    <td>Voornaam</td>\n");
      out.write("                    <td>Familienaam</td>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>Woonplaats</td>\n");
      out.write("                </tr>\n");
      out.write("                ");
 while(personen.next()) {
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print( personen.getString("AanspreekTitel"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( personen.getString("Voornaam"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( personen.getString("Familienaam"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( personen.getString("Email"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print( personen.getString("WoonPlaats"));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
