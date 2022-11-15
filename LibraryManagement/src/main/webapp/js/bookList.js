function redirectToHomePage() {
	window.open("home", "_self");
}

function onEdit(td) {
    selectedRow = td.parentElement.parentElement;
    window.open("editRequest?code="+selectedRow.cells[0].innerHTML, "_self");
}

function redirectToAddPage() {
	window.open("addBookPage", "_self");
}

