<%-- 
    Document   : produto
    Created on : May 1, 2022, 7:12:50 PM
    Author     : frcavalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMDCOMMERCE - PRODUTOS</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/home.css" rel="stylesheet">
        <script src="js/produto.js"></script>
    </head>
    <body>
        <jsp:include page="parts/header.jsp"/>
        
        <div class="alert alert-warning" role="alert" id="alertaProduto">
            <p></p>
        </div>
        
        <div class="container">
            <div class="row">
                <h1>Inserir novo produto</h1>
                <div class="col-md-12">
                    <form action="#">
                        <div class="form-group">
                          <label for="categoria">Descrição</label>
                          <input type="text" class="form-control" id="descricaoProduto" placeholder="Descrição do produto">
                        </div>
                        <div class="form-group">
                          <label for="categoria">Preço</label>
                          <input type="number" class="form-control" id="precoProduto" placeholder="Preço do produto">
                        </div>
                        <div class="form-group">
                          <label for="categoria">Quantidade</label>
                          <input type="number" class="form-control" id="quantidadeProduto" placeholder="Quantidade do produto">
                        </div>
                        <div class="form-group">
                          <label for="categoria">Imagem produto</label>
                          <input type="file" class="form-control" id="imagemProduto">
                        </div>
                        <div class="form-group">
                            <label for="categoriaProduto">Escolha uma categoria</label>
                            <select class="custom-select" id="categoriaProduto">
                                <option selected>Tecnologia</option>
                                <option value="1">Livro</option>
                                <option value="2">Cozinha</option>
                            </select>
                        </div>
                        <br>
                        <button type="button" class="btn btn-primary" id="btn-produto" onclick="criar()">Criar</button>
                      </form>
                </div>
            </div>
            <div class="row">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Descrição</th>
                        <th scope="col">Preço</th>
                        <th scope="col">Quantidade</th>
                        <th scope="col">Ações</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Mark</td>
                        <td>Mark</td>
                        <td>
                            <button type="button" class="btn btn-success">Editar</button>
                            <button type="button" class="btn btn-danger">Excluir</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Mark</td>
                        <td>Mark</td>
                        <td>
                            <button type="button" class="btn btn-success">Editar</button>
                            <button type="button" class="btn btn-danger">Excluir</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>Mark</td>
                        <td>Mark</td>
                        <td>
                            <button type="button" class="btn btn-success">Editar</button>
                            <button type="button" class="btn btn-danger">Excluir</button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
            </div>
        </div>
    </body>
</html>
