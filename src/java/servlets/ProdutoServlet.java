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
import smdcommerce.produto.modelo.Produto;
import smdcommerce.produto.modelo.ProdutoDAO;
import utils.ValidaLogin;

/**
 *
 * @author frcavalc
 */
public class ProdutoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ProdutoDAO produto = new ProdutoDAO();
        List<Produto> produtos = new ArrayList<>();
        String mensagem = null;
        try {
            produtos = produto.obterTodos();
        } catch (Exception ex) {
            mensagem = ex.getMessage();
        }
        ValidaLogin v = new ValidaLogin();
        request.setAttribute("produtos", produtos);
        v.validar(request, response, "produto.jsp");
    }
}
