<%@page import="smdcommerce.usuario.modelo.Usuario"%>

<div id="nav">
    <a href="InicioServlet" id="logo-url">
        <i class="bi bi-house"></i>
    </a>
    <%
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        if (usuario != null && usuario.getAdministrador() == true) {
    %>
        <a href="CategoriaServlet">
            Categorias
        </a>
        <a href="ProdutoServlet">
            Produtos
        </a>
        <a href="RelatoriosServlet">
            <i class="bi bi-file-text"></i>
        </a>

    <%
        }
    %>
    
    <%
        if (usuario != null) {
    %>
        <a href="ComprasServlet">
            <i class="bi bi-bag"></i>
        </a>
        <a href="PerfilServlet">
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
    
</div>
    
</div>
