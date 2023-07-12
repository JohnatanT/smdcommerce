/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package smdcommerce.categoria.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import smdcommerce.categoria.modelo.CategoriaDAO;

/**
 *
 * @author johnatan.cavalcante
 */
public class AtualizaCategoriaServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String id = request.getParameter("id");
        String descricao = request.getParameter("descricao");
        CategoriaDAO categoria = new CategoriaDAO();
        String mensagem = null;
        try {
            categoria.atualizar(Integer.valueOf(id), descricao);
            mensagem = "Categoria atualizada com sucesso!";
        } catch (Exception ex) {
            mensagem = ex.getMessage();
        }
        
         /* saída */
        request.setAttribute("mensagem", mensagem);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("CategoriaServlet");
        requestDispatcher.forward(request, response);
    }

   
}
