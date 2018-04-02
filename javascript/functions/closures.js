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

/* Breaking the Chain witha Closure */
// This is Global Space

// Closure #1
// function f() {
// 	var b = "Yuri";
// 	return function() {
// 		return b;
// 	}
// }
// n = f();

// Closure #2
var n;
function f() {
	var b = "b";
	n = function() {
		return b;
	};
}

// Necessita que f() seja iniciada
console.log(f());
console.log(n());

