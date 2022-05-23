<%@page import="smdcommerce.usuario.modelo.Usuario"%>

<div id="nav">
    <a href="index.jsp" id="logo-url">
        <i class="bi bi-house"></i>
    </a>
<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    if (usuario != null) {
%>
    <a href="carrinho.jsp">
        <i class="bi bi-cart"></i>
    </a>
    <a href="compras.jsp">
        <i class="bi bi-bag"></i>
    </a>
    <a href="perfil.jsp">
        <i class="bi bi-person-circle"></i>
    </a>
    <a href="LogoutServlet">
        <i class="bi bi-box-arrow-left"></i>
    </a>
<%
    } else {
%>
    <a href="login.jsp">Login</a>
    <a href="cadastro.jsp">Cadastro</a>
<%
    }
%>

<%
    if (usuario != null && usuario.getAdministrador() == true) {
%>
    <a href="categoria.jsp">
        Categorias
    </a>
    <a href="produto.jsp">
        Produtos
    </a>
    <a href="relatorios.jsp">
        <i class="bi bi-file-text"></i>
    </a>
    
<%
    }
%>
    
</div>
    
</div>
