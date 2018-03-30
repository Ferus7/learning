// var helloWorld = function() {
// 	var message = "Hello World!";
// 	return function() {
// 		return message;
// 	};
// };

// var fnHelloWorld = helloWorld();
// console.log(fnHelloWorld());

// function makeFunc() {
// 	var name = "Mozilla";
// 	function displayName() {
// 		return name;
// 	}
// 	return displayName;
// }

// var myFunc = makeFunc();

/* Lexical Scope */

function f1() {
	var a = 1;
	f2();
}

function f2() {
	return a;
}

f1();

