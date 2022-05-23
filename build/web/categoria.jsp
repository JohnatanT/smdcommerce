<%-- 
    Document   : categoria
    Created on : May 1, 2022, 7:02:55 PM
    Author     : frcavalc
--%>

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
    </head>
    <body>
        <jsp:include page="parts/header.jsp"/>
        
        <div class="container">
            <div class="row">
                <h1>Inserir nova categoria</h1>
                <div class="col-md-12">
                    <form action="#">
                        <div class="form-group">
                          <label for="descricaoCategoria">Descrição</label>
                          <input type="text" class="form-control" id="descricaoCategoria" placeholder="Descrição da categoria">
                        </div>
                        <br>
                        <button type="button" class="btn btn-primary" id="btn-categoria" onclick="criar()">Criar</button>
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
                      <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>
                            <button type="button" class="btn btn-success">Editar</button>
                            <button type="button" class="btn btn-danger">Excluir</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>
                            <button type="button" class="btn btn-success">Editar</button>
                            <button type="button" class="btn btn-danger">Excluir</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
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
