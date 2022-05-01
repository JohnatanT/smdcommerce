<%-- 
    Document   : login
    Created on : May 1, 2022, 9:12:03 AM
    Author     : frcavalc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMDCOMMERCE - LOGIN</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/home.css" rel="stylesheet">
        <script src="js/login.js"></script>
    </head>
    <body>
        <jsp:include page="parts/header.jsp"/>
        
        <div class="alert alert-warning" role="alert" id="alertaLogin">
            <p></p>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form action="#">
                        <div class="form-group">
                          <label for="exampleInputEmail1">Login</label>
                          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite seu login">
                          <small id="emailHelp" class="form-text text-muted">Nós nunca iremos compartilhar seus dados com outros.</small>
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Senha</label>
                          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha">
                        </div>
                        <button type="button" class="btn btn-primary" id="btn-login" onclick="validar()">Entrar</button>
                      </form>
                </div>
            </div>
        </div>
    </body>
</html>
