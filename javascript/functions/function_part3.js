/* Functions that Return Functions */

// function a() {
// 	console.log('A!');
// 	return function() {
// 		console.log('B!');
// 	};
// }

// var newFunc = a();
// a();
// a()();
// newFunc();

/* Function, Rewrite Thyself */
/* We can use the new function to replace the old one.*/
// a = a();
// a();

// function a() {
// 	console.log('A!');
// 	a = function() {
// 		console.log('B!');
// 	};
// }

// a = a();
// a()

var a  = function() {
	function someSetup() {
		var setup = 'Done';
	}
	function actualWork(){
		console.log("Worky-worky");
	}
	someSetup();
	return actualWork;
}();
a();