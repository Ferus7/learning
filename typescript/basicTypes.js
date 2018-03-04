//Boolean
var isDone = false;
//Number
var decimal = 6;
var hex = 0xf00d;
var binary = 10;
var octal = 484;
//String
var color = "blue";
color = 'red';
var fullname = 'Bob Bobbington';
var age = 37;
var sentence = "Hello, my name is ${ fullname }. I'll be ${age+1} years old next month";
//This is equivalent to declaring sentence like so:
var sentence1 = "Hello, my name is + fullname." + "I'll be" + "age+1" + "years old next month";
//Array
var list = [1, 2, 3];
//Generic array type, Array<elemType>
var list1 = [1, 2, 3];
//Tuple
var x;
x = ["Hello", 10];
console.log(x[0].substr(1));
