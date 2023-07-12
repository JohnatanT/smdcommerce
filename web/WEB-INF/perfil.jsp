<%-- 
    Document   : perfil
    Created on : May 1, 2022, 10:59:12 AM
    Author     : frcavalc
--%>

<%@page import="smdcommerce.usuario.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMDCOMMERCE - PERFIL</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/home.css" rel="stylesheet">
        <script src="js/perfil.js"></script>
        <script type="text/javascript">
            function atualizaUsuario() {
                document.forms[0].action = "AtualizaUsuarioServlet";
                document.forms[0].submit();
            }
            
            function deletaUsuario() {
                document.forms[0].action = "DeletarUsuarioServlet";
                document.forms[0].submit();
            }
        </script>
    </head>
    <body>
        <jsp:include page="../parts/header.jsp"/>
        <%
            Usuario usuario = (Usuario) session.getAttribute("usuario");
        %>
    
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form method="post">
                        <input type="hidden" name="id" id="id" value="<%= (usuario != null ? usuario.getId() : "") %>">
                        <div class="form-group">
                          <label for="exampleInputEmail1">Login</label>
                          <input type="text" class="form-control" value="<%= (usuario != null ? usuario.getLogin() : "") %>" id="login" name="login" aria-describedby="emailHelp" placeholder="Digite seu login">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Senha</label>
                          <input type="password" class="form-control" value="<%= (usuario != null ? usuario.getSenha() : "") %>" id="senha" name="senha" placeholder="Senha">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputEmail1">Nome</label>
                          <input type="text" class="form-control" id="nome" name="nome" value="<%= (usuario != null ? usuario.getNome() : "") %>" aria-describedby="emailHelp" placeholder="Digite seu nome">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputEmail1">Email</label>
                          <input type="text" class="form-control" value="<%= (usuario != null ? usuario.getEmail() : "") %>" id="email" name="email" aria-describedby="emailHelp" placeholder="Digite seu email">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputEmail1">Endereço</label>
                          <input type="text" class="form-control" value="<%= (usuario != null ? usuario.getEndereco() : "") %>" id="endereco" name="endereco" aria-describedby="emailHelp" placeholder="Digite seu endereço">
                        </div>
                        <button type="button" class="btn btn-primary" id="btn-login" onclick="atualizaUsuario();">Atualizar</button>
                        <button type="button" class="btn btn-danger" onclick="deletaUsuario();">Excluir cadastro</button>
                      </form>
                </div>
            </div>
        </div>
        
        
    </body>
</html>
