/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import carrinho.CarrinhoCompra;
import carrinho.CarrinhoCompraItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import smdcommerce.produto.modelo.ProdutoDAO;
import smdcommerce.produto.modelo.Produto;

/**
 *
 * @author johnatan.cavalcante
 */
public class InicioServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProdutoDAO produtoDAO = new ProdutoDAO();
        List<Produto> produtosDisponiveis = null;
        try {
            produtosDisponiveis = produtoDAO.obterTodos();
        } catch (Exception ex) {
            produtosDisponiveis = new ArrayList<>();
        }
        request.setAttribute("produtosDisponiveis", produtosDisponiveis);
        
        Cookie[] cookies = request.getCookies();
        Cookie cookie = null;
        for (int i = 0; cookies != null && i < cookies.length; i++) {
            if (cookies[i].getName().equals(CarrinhoCompra.CHAVE_COOKIE_CARRINHO_COMPRA)) {
                cookie = cookies[i];
                break;
            }
        }
        if (cookie == null) {
            cookie = new Cookie(CarrinhoCompra.CHAVE_COOKIE_CARRINHO_COMPRA, "");
        }
        cookie.setMaxAge(Integer.MAX_VALUE);
        response.addCookie(cookie);
        
        List<CarrinhoCompraItem> carrinhoCompraItens = CarrinhoCompra.obterCarrinhoCompra(cookie.getValue());
        request.setAttribute("carrinhoCompraItens", carrinhoCompraItens);
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request, response);
    }

}
