/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package smdcommerce.produto.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import smdcommerce.produto.modelo.ProdutoDAO;
import smdcommerce.usuario.modelo.UsuarioDAO;

/**
 *
 * @author johnatan.cavalcante
 */
public class DeletaProdutoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        ProdutoDAO produto = new ProdutoDAO();
        String mensagem = null;
        
        try {
            produto.deletar(Integer.valueOf(id));
            mensagem = "Produto deletado com sucesso";
        } catch (Exception ex) {
            mensagem = ex.getMessage();
        }
        
        /* saída */
        request.setAttribute("mensagem", mensagem);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("ProdutoServlet");
        requestDispatcher.forward(request, response);
    }
}
