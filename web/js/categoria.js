let alertaCategoria = "alertaCategoria";

function criar() {
   document.getElementById(alertaCategoria).style.display = "none";
    
   let validacao = false;
   let descricao = document.getElementById('descricaoCategoria').value.replace(/ /g, '');
   
   if (descricao === null || descricao === '') {
       document.getElementById(alertaCategoria).getElementsByTagName('p')[0].innerHTML = "Descrição é obrigatório!";
        validacao = true;
   }
   
   if (validacao) {
        document.getElementById(alertaCategoria).style.display = "block";
    }
}
 
