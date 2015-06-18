
	function userLogin() {
		document.getElementById("candidateForm").submit();
	}
	function login() {
	//alert("heloooooooooo");
		document.getElementById("adminForm").submit();
	}

function cancel(){
	$("#dialog").dialog('close');
}
function showContactusDialog(){
	$("#dialog").dialog();
}
function sendContactusMessage() {
	var message = document.getElementById("cprmsg").value;
	if(message ==""){
		alert("Please enter the message.");
	 	return;
	 }else{
		$.post("sendpcrequest.do?check", {
			msg : message,
			pid : "-1",
			opr : "req"
		}, function(data) {
			if (data == null) {
				message(container, "Error while sending request...");
			} else {			
				if(data == 'success'){
					alert("Your request has been send successfully.");
					$("#dialog").dialog('close');
				}
			}
		});
	 }
}
