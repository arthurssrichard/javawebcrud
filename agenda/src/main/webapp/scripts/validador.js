/**
 * Validação de formulário
 */

function validar(){
	let nome = formContato.nome.value;
	let fone = formContato.fone.value;
	let email = formContato.email.value;
	
	if(nome === ""){
		alert("Preencha o campo nome")
		form.nome.focus()
		return false
	}else if (fone ===""){
		alert("Preencha o campo fone")
		form.fone.focus()
		return false
	}else{
		document.forms["formContato"].submit();
	}
}