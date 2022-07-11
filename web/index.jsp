<%-- 
    Document   : index
    Created on : May 1, 2022, 8:47:50 AM
    Author     : frcavalc
--%>

<%@page import="smdcommerce.usuario.modelo.Usuario"%>
<%@page import="carrinho.CarrinhoCompraItem"%>
<%@page import="smdcommerce.produto.modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMDCOMMERCE</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/home.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="parts/header.jsp"/>
        
        <% if (request.getAttribute("mensagem") != null) { %>
        <div class="alert alert-warning" role="alert">
            <p><%= request.getAttribute("mensagem") %></p>
        </div>
        <% } %> 
        
        
        <h3>Carrinho de Compras</h3>
        <%
            List<CarrinhoCompraItem> carrinhoCompraItens = (List<CarrinhoCompraItem>) request.getAttribute("carrinhoCompraItens");
            if (carrinhoCompraItens == null || carrinhoCompraItens.size() == 0) {
        %>
        <div>Não existem produtos no seu carrinho compras</div>
        <%
        } else {
            double total = 0;
            for (int i = 0; i < carrinhoCompraItens.size(); i++) {
                CarrinhoCompraItem carrinhoCompraItem = carrinhoCompraItens.get(i);
        %>
        <div>Descrição: <%= carrinhoCompraItem.getProduto().getDescricao()%></div>
        <div>Preço: <%= carrinhoCompraItem.getProduto().getPreco()%></div>
        <div>Quantidade: <%= carrinhoCompraItem.getQuantidade()%></div>
        <div><a href="RemoverProdutoCarrinhoCompraServlet?produtoId=<%= carrinhoCompraItem.getProduto().getId()%>">Remover do Carrinho de Compras</a></div>
        <%
                total += carrinhoCompraItem.getProduto().getPreco() * carrinhoCompraItem.getQuantidade();
                if (i < carrinhoCompraItens.size() - 1) {
                    out.println("<br/>");
                }
            }
        %>
        <br/>
        <div>Total R$ <%= total%></div>
        <%
            }
        %>
        
       
        
        <div class="container">
            <div class="row">
                <h3>Produtos Disponíveis</h3>
        <%
            List<Produto> produtosDisponiveis = (List<Produto>) request.getAttribute("produtosDisponiveis");
            if (produtosDisponiveis == null || produtosDisponiveis.size() == 0) {
        %>
        <div>Não existem produtos disponíveis</div>
        <%
        } else {
            for (int i = 0; i < produtosDisponiveis.size(); i++) {
                Produto p = produtosDisponiveis.get(i);
            
        %>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <div><%= (p.getFotoUrl()== null) ? "Sem Foto" : "<img class='card-img-top' src=\"ExibirProdutoFotoServlet?id=" + p.getId() + "\" />" %></div>
                        <div class="card-body">
                          <p class="card-text">Descrição: <%= p.getDescricao()%></p>
                          <p class="card-text">Preço: <%= p.getPreco()%></p>
                          <p class="card-text">Quantidade: <%= p.getQuantidade()%></p>
                        </div>
                        <div><a href="AdicionarProdutoCarrinhoCompraServlet?produtoId=<%= p.getId()%>">Adicionar ao Carrinho de Compras</a></div>
                            <%
                                        if (i < produtosDisponiveis.size() - 1) {
                                            out.println("<br/>");
                                        }
                                    }
                                
                            %>
                        <hr/>
                        
                    </div>
                </div>
              
                
                
            </div>
                        
                        <%
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        if (usuario != null && carrinhoCompraItens.size() > 0) {
    %>
    <button><a href="NovaCompraServlet?produtoId=<%= carrinhoCompraItens.get(0).getProduto().getId() %>&quantidade=<%= carrinhoCompraItens.get(0).getQuantidade() %>">Finalizar Compra</a></button>
    <%
        }
        }
    %>
        </div>
        
        
    </body>
</html>
