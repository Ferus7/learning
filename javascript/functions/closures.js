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
// var n;
// function f() {
// 	var b = "b";
// 	n = function() {
// 		return b;
// 	};
// }

// Necessita que f() seja iniciada
// console.log(f());
// console.log(n());

/* 
 *   Returning the argument 
 * 
 * The argument returned by n-function, realize that it
 * has been incremented after function has been defined.
 * It's as if the function were defined before the return
 * keywork and all operation happened before of defination
 * of the n-function.
 *
 *   Example
 *
 *  function f(arg) {
 *    arg++;	  
 *
 *    var n = function() {
 *		return arg;
 *	  }  
 *	  return n;
 *  }
 * 
*/

// function f(arg) {
// 	var n = function() {
// 		return arg;
// 	}
// 	arg++;
// 	return n;
// }

// var a = f(10);

// console.log(a());

/*
 *   Closures in a Loop
 * The result of functions bellow will be 3.
 * Because the three functions created are point to
 * the same place, that is i variable.
 * OBS.: Closures only link (reference) the variabel, 
 * It doesn't remember the variable's value!
 *
*/

// function f() {
// 	var a = [];
// 	var i;
// 	for(i = 0; i < 3; i++) {
// 		a[i] = function() {
// 			return i;
// 		}
// 	}
// 	return a;
// }

// var a = f();

// console.log(a[0]());
// console.log(a[1]());
// console.log(a[2]());

/* Solution */

function f() {
	var a = [];
	var i;
	for(i = 0; i < 3; i++) {
		a[i] = (function(x){
			return function(){
				return x;
			}
		})(i);
	}
	return a;
}
