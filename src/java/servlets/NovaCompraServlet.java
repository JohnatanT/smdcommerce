/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smdcommerce.usuario.modelo.Usuario;
import smdcommerce.venda.modelo.CompraDAO;

/**
 *
 * @author johnatan.cavalcante
 */
public class NovaCompraServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        String produtoId = request.getParameter("produtoId");
        String quantidade = request.getParameter("quantidade");
        
        CompraDAO compraDAO = new CompraDAO();
        try {
            compraDAO.inserir(usuario.getId(), Integer.valueOf(produtoId), Integer.valueOf(quantidade));
        } catch (SQLException ex) {
            Logger.getLogger(NovaCompraServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(NovaCompraServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("InicioServlet");
        requestDispatcher.forward(request, response);
    }


}
