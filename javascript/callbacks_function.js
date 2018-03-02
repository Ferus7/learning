// function invoke_and_add(a, b) {
// 	return a() + b();
// }

// function one() {
// 	return 1;
// }

// function two() {
// 	return 2;
// }

// console.log(invoke_and_add(one, two));

// function multiplyByTwo(a, b, c, callback) {
// 	var i, ar = [];
// 	for(i = 0; i < 3; i++) {
// 		ar[i] = arguments[i] * 2;
// 	}
// 	return ar;
// }

function addOne(a) {
	return a+1;
}

// console.log(multiplyByTwo(1, 2, 3));
// console.log(addOne(100));

// var myarr = [];
// myarr = multiplyByTwo(10, 20, 30);

// for(var i = 0; i < 3; i++) {
// 	myarr[i] = addOne(myarr[i]);
// }

// console.log(myarr);

/* Temos um problema, pois estamos realizando dois loops e, caso estejamos lidando com muitos
 * dados, este processo pode levar bastante tempo.
 * Vamos deixar mais performático com apenas um loop.
 */

function multiplyByTwo(a, b, c, callback) {
	var i, ar = [];
	for(i = 0; i < 3; i++) {
		ar[i] = callback(arguments[i] * 2);
	}
	return ar;
}

console.log(multiplyByTwo(10, 20, 30, addOne));
