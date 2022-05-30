/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smdcommerce.usuario.modelo.Usuario;
import smdcommerce.usuario.modelo.UsuarioDAO;

/**
 *
 * @author frcavalc
 */
public class LoginClienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /* entrada */
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        /* processamento */
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean sucesso = false;
        String mensagem = null;
        try {
            Usuario usuario = usuarioDAO.obter(login);
            if (usuario.getSenha().equals(senha)) {
                sucesso = true;
                HttpSession session = request.getSession(true);
                session.setAttribute("usuario", usuario);
            } else {
                sucesso = false;
                mensagem = "Login ou senha inválida";
            }
        } catch (Exception ex) {
            sucesso = false;
            mensagem = ex.getMessage();
        }
        /* saída */
        if (sucesso) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        } else {
            request.setAttribute("mensagem", mensagem);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
            requestDispatcher.forward(request, response);
        }
    }
}
