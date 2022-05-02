const alerta = "alertaPerfil";

function atualizar() {
    document.getElementById(alerta).style.display = "none";
    let validacao = false;
    let login = document.getElementById('exampleInputEmail1').value.replace(/ /g,'');
    let password = document.getElementById('exampleInputPassword1').value.replace(/ /g,'');
    let email = document.getElementById('email').value.replace(/ /g,'');
    let endereco = document.getElementById('endereco').value.replace(/ /g,'');
    let nome = document.getElementById('nome').value.replace(/ /g,'');
    
     if (login === null || login === '') {
        document.getElementById(alerta).getElementsByTagName('p')[0].innerHTML = "Email é obrigatório";
        validacao = true;
    }
    
    if (password === null || password === '') {
        document.getElementById(alerta).getElementsByTagName('p')[0].innerHTML = "Senha é obrigatório";
        validacao = true;
    }
    
    if (email === null || email === '') {
        document.getElementById(alerta).getElementsByTagName('p')[0].innerHTML = "Email é obrigatório";
        validacao = true;
    }
    
    if (endereco === null || endereco === '') {
        document.getElementById(alerta).getElementsByTagName('p')[0].innerHTML = "Endereço é obrigatório";
        validacao = true;
    }
    
    if (nome === null || nome === '') {
        document.getElementById(alerta).getElementsByTagName('p')[0].innerHTML = "Nome é obrigatório";
        validacao = true;
    }
    
    if (validacao) {
        document.getElementById(alerta).style.display = "block";
    }
    
}

