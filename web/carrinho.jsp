<%-- 
    Document   : carrinho
    Created on : May 1, 2022, 10:11:13 AM
    Author     : frcavalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMDCOMMERCE - CARRINHO</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/home.css" rel="stylesheet">
        <link href="css/carrinho.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="parts/header.jsp"/>
        <div class="container">
            <div class="row">
                <div class="cold-md-6 col-xl-3">
                    <div class="card bg-c-green order-card">
                        <div class="card-block">
                            <h6 class="m-b-20">Total do carrinho</h6>
                            <h2 class="text-right"><i class="fa fa-rocket f-left"></i><span>R$ 486</span></h2>
                            <p class="m-b-0">Quantidade de itens<span class="f-right">3</span></p>
                        </div>
                    </div>
                </div>
                <div class="cold-md-6">
                    <div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="https://warcontent.com/wp-content/uploads/2020/08/livros-javascript-4-1280x720.png" alt="Card image cap">
                                    <div class="card-body">
                                      <h5 class="card-title">Livro JavaScript</h5>
                                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                      <div class="row">
                                          <div class="col-md-4">
                                          <p>1</p>
                                      </div>
                                      <div class="col-md-8">
                                        <button class="btn">-</button> <button class="btn">+</button>
                                      </div>
                                      </div>
                                      <a href="#" class="btn btn-danger">Remover</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="https://warcontent.com/wp-content/uploads/2020/08/livros-javascript-4-1280x720.png" alt="Card image cap">
                                    <div class="card-body">
                                      <h5 class="card-title">Livro JavaScript</h5>
                                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                      <div class="row">
                                          <div class="col-md-4">
                                          <p>1</p>
                                      </div>
                                      <div class="col-md-8">
                                        <button class="btn">-</button> <button class="btn">+</button>
                                      </div>
                                      </div>
                                      <a href="#" class="btn btn-danger">Remover</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="https://warcontent.com/wp-content/uploads/2020/08/livros-javascript-4-1280x720.png" alt="Card image cap">
                                    <div class="card-body">
                                      <h5 class="card-title">Livro JavaScript</h5>
                                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                      <div class="row">
                                          <div class="col-md-4">
                                          <p>1</p>
                                      </div>
                                      <div class="col-md-8">
                                        <button class="btn">-</button> <button class="btn">+</button>
                                      </div>
                                      </div>
                                      <a href="#" class="btn btn-danger">Remover</a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                    
                </div>
            </div>
            <div>
                <a href="#" class="btn btn-success" id="finalizar">Finaliar Compras</a>
            </div>
        </div>
    </body>
</html>
