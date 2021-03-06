// var counter = 0;
// var add = function() {
// 	return ++counter;
// };

// console.log(add());
// console.log(add());
// console.log(add());

// var itens = [];
// var add = function(item) {
// 	itens.push(item);
// 	return itens;
// };

// console.log(add('A'));
// console.log(add('B'));
// console.log(add('C'));
// console.log(add());

/*
 * JavaScript não tem linker, como em outras linguagens, por causa disso temos 
 * que ter cuidado com o escopo global.
 *
 * O nosso problema começa quando a variável é declarada em escopo global.
 *
 * Duas funções com o mesmo nome estão se referenciando a ela, nas suas chamadas
 * (linhas 16-19); o problema é quando declara-se outra função com o mesmo nome,
 * pois a partir deste momento, toda vez que você se referenciar a uma delas, o
 * interpretador tomará como referencia a última função declarada.
 *
 * Por causa disso, na linha 19 ocorrerá algo inesperado, pois ele vai tentar
 * colocar o nada, pois não há parâmetro, em itens, portanto, será adicionado undefined.
 */

/*=====================================================================================*/

/* Outra tentattiva que falhará */

/*
 * Uma das formas para resolvemos este tipo de problema
 * é com o uso do emcapsulamento por meio de objetos.
 * No entanto, este tipo de solução gera um problema, pois
 * Javascript não tem modificadores de visibilidade (public, private),
 * portanto, corre um sério risco de acessármos um valor
 * interno ao objeto.
*/

// var counter = {
// 	value: 0,
// 	add: function() {
// 		return ++this.value;
// 	}
// };

// console.log(counter.add());
// console.log(counter.add());
// console.log(counter.add());

/* Temos aqui um NaN, pois ele está somando ++undefined, e isso
 * não existe. Então temos um sério problema de podermos 
 * modificar uma propriedade dentro de um objeto.
 * 			counter.value = undefined;
 */

// counter.value = undefined;
// console.log(counter.add());

// var itens = {
// 	value: [],
// 	add: function(item) {
// 		this.value.push(item);
// 		return this.value;
// 	}
// };

/*=====================================================================================*/

/* Uma segunda maneira que, por sua vez, é mais viável;
 * Seria o uso de funções, já que elas têm seu bloco isolado
 * e também é um objeto que executa códigos.
 * Podemos gerar encapsulamento não só por meio da factory function,
 * mas também constructor function.
 */

/* Por meio de Factory Function */
// var createCounter = function() {
// 	var value = 0;
// 	return {
// 		add: function() {
// 			// Isso só é possível por meio das clojures
// 			return ++value;
// 		}
// 	};
// };

// var counter = createCounter();
// console.log(counter.add());

/* Por meio de Constructor Function */
// var Create = function() {
// 	var value = 0;
// 	this.add = function() {
// 		return ++value;
// 	};
// };

// var counter = new Create();
// console.log(counter.add());

/*=====================================================================================*/

/* Temos um padrão legal para se usar
 * Immediately-Invoked Function Expression - IIFE
 */

/* Ideia do Module Pattern*/
/* counter recebeu a invocação de função */
// var counter = (function() {
//     var value=0;
//   	return {
//   		add: function() {
//   			return ++value;
//   		}
//   	};
// })();

/* Uma outra pequena modificação, nos concede o:
 * Revealing Module Pattern
*/

/* OBS.: Podemos adicionar o undercore prefixando tudo que for privado */

// var counter = (function() {
// 	var _value = 0;

// 	_add = function() {
// 		return ++_value;
// 	};

// 	_reset = function() {
// 		_value = 0;
// 	}

// 	return {
// 		add: _add,
// 		reset: _reset
// 	};
// })();

// console.log(counter.add());
// console.log(counter.add());
// console.log(counter.add());
// counter.reset()
// console.log(counter.add());


