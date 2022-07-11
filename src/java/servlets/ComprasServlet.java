/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smdcommerce.usuario.modelo.Usuario;
import smdcommerce.venda.modelo.CompraDAO;
import smdcommerce.venda.modelo.Compra;
import utils.ValidaLogin;

/**
 *
 * @author frcavalc
 */
public class ComprasServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ValidaLogin v = new ValidaLogin();
        HttpSession session = request.getSession(false);
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        List<Compra> compras = new ArrayList<>();
        try {
            if (usuario != null && usuario.getAdministrador()) {
                compras = new CompraDAO().obterTodos(); 
            } else if(usuario != null) {
                compras = new CompraDAO().obterTodosDoCliente(usuario.getId()); 
            }
            
            request.setAttribute("compras", compras);
        } catch (Exception ex) {
            Logger.getLogger(ComprasServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        v.validar(request, response, "compras.jsp");
    }
}
