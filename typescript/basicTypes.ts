//Boolean
let isDone: boolean = false;

//Number
let decimal: number = 6;
let hex: number = 0xf00d;
let binary: number = 0b1010;
let octal: number = 0o744;

//String
let color: string = "blue";
color = 'red';

let fullname: string = 'Bob Bobbington';
let age: number = 37;
let sentence: string = "Hello, my name is ${ fullname }. I'll be ${age+1} years old next month";

//This is equivalent to declaring sentence like so:
let sentence1: string = "Hello, my name is + fullname." + "I'll be" + "age+1" + "years old next month";


//Array
let list: number[] = [1,2,3];

//Generic array type, Array<elemType>
let list1: Array<number> = [1, 2, 3];

//Tuple
let x: [string, number];
x = ["Hello", 10];
// console.log(x[0].substr(1));

/* Enum */
enum Color {Red, Green, Blue}
let c: Color = Color.Green;
console.log(c);