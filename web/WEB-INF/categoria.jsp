<%-- 
    Document   : categoria
    Created on : May 1, 2022, 7:02:55 PM
    Author     : frcavalc
--%>

<%@page import="smdcommerce.categoria.modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMDCOMMERCE - CATEGORIAS</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/home.css" rel="stylesheet">
        <script src="js/categoria.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        
        <script type="text/javascript">
            function atualizaCategoria(id) {
                let descricao = document.getElementById("descricao_" + id).innerText;
                $.post('AtualizaCategoriaServlet', {id:id, descricao:descricao}, function(response){ 
                    alert("Categoria atualizada com sucesso!");
              });
            }
            
            function deletarCategoria(id) {
                $.post('DeletarCategoriaServlet', {id:id}, function(response){ 
                    alert("Categoria deletada com sucesso!");
                    location.reload();
              });
            }
            
            function inserirCategoria() {
                document.forms[0].action = "InserirCategoriaServlet";
                document.forms[0].submit();
            }
        </script>
    </head>
    
        <jsp:include page="../parts/header.jsp"/>
        
        <% if (request.getAttribute("mensagem") != null) { %>
        <div class="alert alert-warning" role="alert">
            <p><%= request.getAttribute("mensagem") %></p>
        </div>
        <% } %>  
        
        <% 
            List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
        %>
        
        <div class="container">
            <div class="row">
                <h1>Categorias</h1>
                <div class="col-md-12">
                    <form method="post">
                        <div class="form-group">
                          <label for="descricaoCategoria">Descrição</label>
                          <input type="text" class="form-control" id="descricao" name="descricao" placeholder="Descrição da categoria">
                        </div>
                        <br>
                        <button type="button" class="btn btn-primary" id="btn-categoria" onclick="inserirCategoria();">Salvar</button>
                      </form>
                </div>
            </div>
            <div class="row">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Descrição</th>
                         <th scope="col">Ações</th>
                      </tr>
                    </thead>
                    <tbody>
                    <% if (!categorias.isEmpty()) { %>
                      <% for (int i = 0; i < categorias.size(); i++) { %>
                        <tr>
                            <th scope="row"><%= categorias.get(i).getId()%></th>
                            <td id="descricao_<%= categorias.get(i).getId()%>" contenteditable><%= categorias.get(i).getDescricao()%></td>
                            <td>
                                <button type="button" class="btn btn-success" onclick="atualizaCategoria(<%= categorias.get(i).getId()%>);">Editar</button>
                                <button type="button" class="btn btn-danger" onclick="deletarCategoria(<%= categorias.get(i).getId()%>);">Excluir</button>
                            </td>
                        </tr>
                      <% } %>
                    <% } %> 
                    </tbody>
                  </table>
            </div>
        </div>
    
</html>
