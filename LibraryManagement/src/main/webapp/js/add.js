function redirectToBookListPage() {
	window.open("bookList", "_self");
}

function sendAddRequest() {

        const url = "http://localhost:8081//Add";
        const data = {
						"code": document.getElementById('code').value,
						"name": document.getElementById('name').value,
						"author": document.getElementById('author').value,
						"dob": document.getElementById('dob').value
                    };
        const other_params = {
            headers : { "content-type" : "application/json; charset=UTF-8"},
            body : JSON.stringify(data),
            method : "POST",
            mode : "cors"
        };

        fetch(url, other_params);
       
        return true;	
}