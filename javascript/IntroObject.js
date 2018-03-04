var myCar = new Object();
myCar.fabrication = "Ford";
myCar.model = "Mustang";
myCar.year = 1969;

//Undefined, once it not exists.
console.log(myCar.myProperty);

//Bracket Notation
console.log(myCar["fabrication"]); 
console.log(myCar["model"]);
console.log(myCar["year"]);

//
var myObj = new Object(),
    str = "myString",
    aleat = Math.random(),
    obj = new Object();

myObj.tipo               = "Sintaxe de ponto";
myObj["data de criacao"] = "String com espaco";
myObj[str]               = "valor de String";
myObj[aleat]             = "Numero Aleatório";
myObj[obj]               = "Object";
myObj[""]                = "Mesmo uma string vazia";

console.log(myObj);

// Access by variable value
var nameOfProperty = "fabrication";
myCar[nameOfProperty] = "Chevrolet"

nameOfProperty = "model";
myCar[nameOfProperty] = "Camaro SS";

console.log(myCar.fabrication);
console.log(myCar.model);

/* The hasOwnProperty() function return a boolean true, if property of object exists, 
   otherwise it return a boolean false (case it not exists).*/
function showProps(obj, nameObject) {
	var result = "";
	for (var i in obj){
		if(obj.hasOwnProperty(i)) {
			result += nameObject + "." + i + " = " + obj[i] + "\n";
		}
	}
	return result;
}

console.log(showProps(myCar, "myCar"));