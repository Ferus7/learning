/* Array - There are five ways to create Arrays */

// 1st Way

var cars = [];
cars[0] = "Ka";
cars[1] = "Corsa";
cars[2] = "Camaro";
cars[3] = "Palio";//You can jump the positions

// 2nd Way
/*
var cars = ["Ka", "Corsa", "Camaro", ,"5th item"];
*/

// 3rd Way
/*
var cars = new Array();
cars[0] = "Ka";
cars[1] = "Corsa";
cars[2] = "Camaro";
cars[4] = "5th item";//You can jump the positions
*/

//4th Way
/*
var cars = new Array("Ka", "Corsa", "Camaro", ,"5th item");
*/

//5th Way
/*
var cars = new Array(10);//You can pass the initial value, only serves to initialize, but it's not the length of array.
cars[11] = "Camaro SS";
console.log(cars); // [ , , , , , , , , , , , 'Camaro SS' ]
*/

/*Somathing function of Array API*/

console.log(cars.valueOf());
console.log(cars.toString());
console.log(cars.length);
cars.push("Ford"); //return the element
console.log(cars.toString());
console.log(cars.pop()); //Remove the last element
console.log(cars.toString());
cars.unshift("Pajero");
console.log(cars.toString());
console.log(cars.shift());//remove the first element
console.log(cars.toString());
console.log(cars.indexOf("Corsa"));
/* splice(arg1, arg2)
   The first argment is the position,
     in which you wish remove the element and second
     argment is the amount elements that you 
     wish remove. This function returns a elements array.
   It also can replaces element with a third argument.
*/
console.log(cars);
console.log(cars.splice(1, 1));
console.log(cars);
console.log(cars.splice(1, 1, "Ferrari"));
console.log(cars);
console.log(cars.splice(1, 0, "Sonic"));
console.log(cars);
