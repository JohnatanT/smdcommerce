let alertaProduto = "alertaProduto";

function criar() {
    
   document.getElementById(alertaProduto).style.display = "none";
    
   let validacao = false;
   let descricao = document.getElementById('descricaoProduto').value.replace(/ /g, '');
   let preco = document.getElementById('precoProduto').value.replace(/ /g, '');
   let quantidade = document.getElementById('quantidadeProduto').value.replace(/ /g, '');
   let categoria = document.getElementById('categoriaProduto').value.replace(/ /g, '');
   
   if (descricao === null || descricao === '') {
       document.getElementById(alertaProduto).getElementsByTagName('p')[0].innerHTML = "Descrição é obrigatório!";
        validacao = true;
   }
   
   if (quantidade === null || quantidade === '') {
       document.getElementById(alertaProduto).getElementsByTagName('p')[0].innerHTML = "Quantidade é obrigatório!";
       validacao = true;
   }
   
   if (preco === null || preco === '') {
       document.getElementById(alertaProduto).getElementsByTagName('p')[0].innerHTML = "Preço é obrigatório!";
       validacao = true;
   }
   
   if (categoria === null || categoria === '') {
       document.getElementById(alertaProduto).getElementsByTagName('p')[0].innerHTML = "Catgoria é obrigatório!";
       validacao = true;
   }
   
   if (validacao) {
        document.getElementById(alertaProduto).style.display = "block";
   }
} 