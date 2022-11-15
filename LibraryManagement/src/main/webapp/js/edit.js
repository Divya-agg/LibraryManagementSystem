function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) 
        month = '0' + month;
    if (day.length < 2) 
        day = '0' + day;

    return [year, month, day].join('-');
}

function sendEditRequest() {

        const url = "http://localhost:8081//Update";
        const data = {
						"code": document.getElementById('code').value,
						"name": document.getElementById('name').value,
						"author": document.getElementById('author').value,
						"dob": document.getElementById('dob').value
                    };
        const other_params = {
            headers : { "content-type" : "application/json; charset=UTF-8"},
            body : JSON.stringify(data),
            method : "PUT",
            mode : "cors"
        };

        fetch(url, other_params);
        
        console.log(data);
        return true;	
}

function redirectToBookListPage() {
	window.open("bookList", "_self");
}

/*http://localhost:8081//Add*/