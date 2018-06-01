
carousel();

function carousel(){
	var myIndex = 0;
	var i;
	var x = document.getElementsByClassName("grid-form");
	    
	for (i = 0; i < x.length; i++) {
	   x[i].style.display = "none";  
	}

	myIndex++;

	if (myIndex > x.length) {myIndex = 1}    
	x[myIndex-1].style.display = "block";  
}
   
