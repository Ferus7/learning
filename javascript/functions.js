/* Function Declaration - It's loaded before interpretation */

// console.log(sum(1, 2));//3

// function sum(a, b){
// 	return a+b;
// }

// console.log(sum);//[Function: sum]
// console.log(sum(1, 2));//3


/* Function Expression */

// var sum = function(a, b){
// 	return a+b;
// }

// console.log(sum);//[Function]
// console.log(sum(1, 2));//3


/* Named Function Expression */
/*
var sum = function soma(a, b){
	return a+b;
}

console.log(sum);//[Function: sum]
console.log(sum(1, 2));//3
*/

/* Invoking Functions - We have four ways of call*/
//Invoking a function directly in global scope
/*
var soma = function(a, b){
	return a+b;
}

console.log(soma(1, 2));
*/

// Passing a function as argument

// var product = { name: 'shoe', price: 150 };

// var calculateTaxA = function(price){ return price*0.1 };
// var calculateTaxB = function(price){ return price*0.2 };

// var calculatePrice = function(product, formulatesTax){
// 	return product.price + formulatesTax(product.price);
// }

// console.log(calculatePrice(product, calculateTaxA));
// console.log(calculatePrice(product, calculateTaxB));


//Invoking a function by means of object

// var getAge = function(){
// 	return this.age;
// }

// var person = {
// 	name: 'John',
// 	age: 20,
// 	getAge: getAge, //getAge refers to the getAge function in global scope
// 	getName: function(){
// 		return this.name;
// 	}
// };

// console.log(getAge());          // undefined
// console.log(person.getAge());   // 20
// console.log(person.getName());  // 20

// Call and Apply functions
/*
var getAge = function(extra){
	//console.log(arguments); Access all arguments
	return this.age + extra;
}

var person = {
	name: 'John',
	age: 18,
	getAge: getAge, //getAge refers to the getAge function in global scope
	getName: function(){
		return this.name;
	}
};

console.log(person.getAge(2));//20
console.log(getAge.call(person, 2));//20
console.log(getAge.apply(person,[2]));//20
*/

// Invoking by means of 'new' operator
//Factory Function

// var createPerson = function(name, age){
// 	return {
// 		name: name,
// 		age: age
// 	};
// };

// console.log(createPerson("Yuri", 20));
// console.log(createPerson("Maria", 30));


// Constructor Function - It always starts in uppercase

var Person = function(name, age){
	this.name = name;
	this.age  = age;
};

console.log(new Person("Yuri", 20));
console.log(new Person("Maria", 19));

var yuri = {};

Person.call(yuri, 'Yuri Melo', 20);
console.log(yuri);

var igor = {};
Person.call(igor, 'Igor Dos Santos Melo', 19);
console.log(igor);