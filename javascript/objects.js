/* Objeto 
 * 
 * Criamos um objeto com vários tipos de dados, tais como:
 * String, number, null e object.
*/
var pessoa = {
	nome: "João",
	idade: 20,
	telefone: null,
	endereco: {
		logradouro: "Av. Brasil",
		numero: 70,
		bairro: "Centro"
	}
};

/* Podemos colocar propriedades depois de ter criado um objeto */
pessoa2 = {};
pessoa2.endereco = {};

pessoa2.nome = "Yuri";
pessoa2['sobrenome'] = "Melo";
pessoa2.endereco.bairro = "Centro";
pessoa2['endereco']['logradouro'] = 'Rua Seoul';
pessoa2["endereco"]["bairro"] = "Centro";
pessoa2.telefone = null;
pessoa2.peso = undefined;

console.log(pessoa2);

