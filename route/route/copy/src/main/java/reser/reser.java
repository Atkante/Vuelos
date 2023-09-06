package reser;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import com.mysql.jdbc.Driver;

@WebServlet(name = "reser", urlPatterns = {"/reser"})
public class reser extends HttpServlet {

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

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

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            try {

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/mysky?user=root&password=123456");
                st = con.createStatement();
                rs = st.executeQuery("SELECT * FROM `reserva`;");
                while (rs.next()) {

                    out.print("<tr>"
                            + "<th scope=\"row\">" + rs.getString(1) + "</th>"
                            + "<td>" + rs.getString(2) + "</td>"
                            + "<td>" + rs.getString(3) + "</td>"
                            + "<td>" + rs.getString(4) + "</td>"
                            + "<td>" + rs.getString(5) + "</td>"
                            + "<td>" + rs.getString(6) + "</td>"
                            + "<td>" + rs.getString(7) + "</td>"
                            + "<td>" + rs.getString(8) + "</td>"
                            + "<td>" + rs.getString(9) + "</td>"
                            + "<td>" + rs.getString(10) + "</td>"
                            + "<td>" + rs.getString(11) + "</td>"
                            + "<td>"
                            + "  <a href=\"editarCliente.jsp?id=" + rs.getString(1) + "&origen=" + rs.getString(2) + "&destino=" + rs.getString(3) + "&fecha salida=" + rs.getString(4) + "&fecha llegada=" + rs.getString(5) + "&cantidad personas=" + rs.getString(6) + "&precio=" + rs.getString(7) + "&asiento=" + rs.getString(8) + "&telefono=" + rs.getString(9) + "&correo=" + rs.getString(10) + "&total=" + rs.getString(11) + "\"><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i></a>"
                            + "  <a href=\"borrarCliente.jsp?id=" + rs.getString(1) + "\" class=\"ml-1\"><i class=\"fa fa-trash\" aria-hidden=\"true\"></i></a>"
                            + "</td>"
                            + "</tr>"
                    );

                }
            } catch (Exception e) {
                out.print("error mysql " + e);
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
