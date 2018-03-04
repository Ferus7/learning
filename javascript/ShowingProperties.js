/* Showing property (There are three ways) 
	- for...in
	- Object.keys(o)
	- Object.getOwnPropertyNames(o)
*/

var person = {
	name : "Yuri Melo",
	age  : 18
};

function listAllProperties(o){
	var objectToBeInspected;
	var result = [];
	for(objectToBeInspected = o; objectToBeInspected !== null; objectToBeInspected = Object.getPrototypeOf(objectToBeInspected)){
		result = result.concat(Object.getOwnPropertyNames(objectToBeInspected));
	}
	return result;
}
console.log(listAllProperties(person));
