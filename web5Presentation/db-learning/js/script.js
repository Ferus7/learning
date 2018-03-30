function msg() {
	alert("Mensagem");
}

function display() {
	var el = document.getElementById("disp");
	if(el.style.display == 'none') {
		el.style.display = '';
	}
}
