<%-- 
    Document   : relatorios
    Created on : May 1, 2022, 7:46:39 PM
    Author     : frcavalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMDCOMMERCE - RELATÓRIOS</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/home.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="../parts/header.jsp"/>
        <div class="container">
            <div class="row">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Relatório</th>
                        <th scope="col">Ações</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Total de compras por cliente</td>
                        <td>
                            <button type="button" class="btn btn-info"><i class="bi bi-eye"></i></button>
                            <button type="button" class="btn btn-success"><i class="bi bi-box-arrow-in-down"></i></button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>Produtos em falta</td>
                        <td>
                            <button type="button" class="btn btn-info"><i class="bi bi-eye"></i></button>
                            <button type="button" class="btn btn-success"><i class="bi bi-box-arrow-in-down"></i></button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>Valor por dia</td>
                        <td>
                            <button type="button" class="btn btn-info"><i class="bi bi-eye"></i></button>
                            <button type="button" class="btn btn-success"><i class="bi bi-box-arrow-in-down"></i></button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
            </div>
            
        </div>
    </body>
</html>
