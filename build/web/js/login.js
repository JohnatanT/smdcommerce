const alerta = "alertaLogin";

function validar() {
    document.getElementById(alerta).style.display = "none";
    
    let validacao = false;
    let login = document.getElementById('exampleInputEmail1').value.replace(/ /g,'');
    let password = document.getElementById('exampleInputPassword1').value.replace(/ /g,'');
    
    if (login === null || login === '') {
        document.getElementById(alerta).getElementsByTagName('p')[0].innerHTML = "Email é obrigatório";
        validacao = true;
    }
    
    if (password === null || password === '') {
        document.getElementById(alerta).getElementsByTagName('p')[0].innerHTML = "Senha é obrigatório";
        validacao = true;
    }
    
    if (validacao) {
        document.getElementById(alerta).style.display = "block";
    }
    
    return validacao;
    
}

