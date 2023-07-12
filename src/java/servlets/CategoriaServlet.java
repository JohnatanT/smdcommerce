/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import smdcommerce.categoria.modelo.Categoria;
import smdcommerce.categoria.modelo.CategoriaDAO;
import utils.ValidaLogin;

/**
 *
 * @author frcavalc
 */
public class CategoriaServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ValidaLogin v = new ValidaLogin();
        CategoriaDAO categoria = new CategoriaDAO();
        List<Categoria> categorias = new ArrayList<>();
        String mensagem = null;
        try {
            categorias = categoria.obterTodos();
        } catch (Exception ex) {
            mensagem = ex.getMessage();
        }
        
        request.setAttribute("mensagem", mensagem);
        request.setAttribute("categorias", categorias);
        v.validar(request, response, "categoria.jsp");
    }
}
