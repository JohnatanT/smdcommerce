/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package carrinho;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author johnatan.cavalcante
 */
public class AdicionarProdutoCarrinhoCompraServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /* entrada */
        int produtoId = Integer.parseInt(request.getParameter("produtoId"));
        /* processamento */
        Cookie cookie = CarrinhoCompra.obterCookie(request);
        String novoValor = CarrinhoCompra.adicionarItem(produtoId, 1, cookie.getValue());
        cookie.setValue(novoValor);
        /* saída */
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("InicioServlet");
        requestDispatcher.forward(request, response);
    }
}
