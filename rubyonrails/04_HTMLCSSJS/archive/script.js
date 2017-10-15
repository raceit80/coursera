var names = ["Ronald", "Joe", "Greg", "Sandy", "Jack", "Jason", "Heidi"];

var res = "";
for(var i=0; i < names.length; i++) {
	res = names[i].slice(0, 1);
	
	if (res == 'J'|| res == 'j' ) {
		console.log ("GoodBye " + names[i]);
	}
	else {
		console.log ("Hello " + names[i]);
	}


}