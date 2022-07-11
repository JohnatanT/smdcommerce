<%-- 
    Document   : compras
    Created on : May 1, 2022, 10:55:05 AM
    Author     : frcavalc
--%>

<%@page import="smdcommerce.venda.modelo.Compra"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMDCOMMERCE - COMPRAS</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/home.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="../parts/header.jsp"/>
        <h2>Compras Anteriores</h2>
      
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Produto ID</th>
                <th scope="col">Data</th>
                <th scope="col">Quantidade</th>
              </tr>
            </thead>
            <tbody>
                 <%
            List<Compra> produtosDisponiveis = (List<Compra>) request.getAttribute("compras");
            if (produtosDisponiveis != null || produtosDisponiveis.size() != 0) {
            
for (int i = 0; i < produtosDisponiveis.size(); i++) {
                Compra p = produtosDisponiveis.get(i);
        %>
        
        
            <tr>
                <th scope="row"><%= p.getId()%></th>
                <td><%= p.getProdutoId()%></td>
                <td><%= p.getData()%></td>
                <td><%= p.getQuantidade()%></td>
              </tr>
        <%
        
        }
}
    %>
              
            </tbody>
          </table>
    </body>
</html>
