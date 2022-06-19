/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package smdcommerce.usuario.controller;

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
 * @author johnatan.cavalcante
 */
public class AtualizaUsuarioServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /* entrada */
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        /* processamento */
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        String mensagem = null;
        try {
            usuarioDAO.atualizar(Integer.valueOf(id), nome, endereco, email, login, senha);
            mensagem = "Cliente atualizado com sucesso";
            
            Usuario usuario = usuarioDAO.obter(login);
            HttpSession session = request.getSession(true);
            session.setAttribute("usuario", usuario);
        } catch (Exception ex) {
            mensagem = ex.getMessage();
        }
        /* saída */
        request.setAttribute("mensagem", mensagem);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request, response);
    }
}
