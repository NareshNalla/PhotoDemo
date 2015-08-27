window.contentnewslisting = function () {   

	$.ajax({
		url: 'http://localhost:8082/Photo/get/images.spring?pageNo=1',
		type: 'GET',
		contentType: 'application/json',

		success: function (response) {
			var myvar = response.length;
			var mytable = " <table cellpadding=\"10\" cellspacing=\"10\" ><tbody>";
			
			

			var newslist = response;
			for (var i = 0; i < myvar; i++) {
				var contentitem =  newslist[i];
				mytable += "<tr>";
				mytable += "<td>"+contentitem.imageName+"<br>"+contentitem.imageDesc+"<br>";
				mytable +="</td></tr>"+
				"<tr><td> <img alt="+contentitem.imageName+" style=\"align:center;\" width= 650px; height= 600px; src="+contentitem.img_Url+" /></td> </br>";
				
				
			}    
			mytable += "</tr></tbody></table>";
			newsTable.innerHTML += mytable;
			
			var myform="";
			myfrom +=" <h4>Comment</h4>";
			myform += " <form  class='form-inline' role='form'  style='align:center;' action='addComment.spring' method='post'>"+
			"<input type='hidden'  name='commentid'  value="+contentitem.commentid+" class='form-control' id='commentid' >"+
			"<label class='sr-only' for='text'> Comment :</label> <br> <textarea cols='90%' rows='2' name='comment' ></textarea>"+
			"<button type='submit' class='btn btn-default'>Submit</button>"+
			"</form>";
			myForm.innerHTML +=myform;
		},
		error: function (){
			newsTable.innerHTML = "Server error, unable to get data " ;
		}
	});
};

window.contentmenulisting = function () {   

	$.ajax({
		url: 'http://localhost:8082/Photo/get/tagmenu.spring',
		type: 'GET',
		contentType: 'application/json',
		success: function (response) {
			var myvar = response.length;
			var mytable = "<font color=red><b>Tags</b></font> ";

			var menulist = response;
			for (var i = 0; i < myvar; i++) {
				var contentitem =  menulist[i];
				mytable += "<a href='get/imagesbytag.spring?bytag="+contentitem.tagName+"'><button type='button' onClick='GetImagesByTag()' class='btn btn-primary'>"+contentitem.tagName+"</button></a>";
			}    
			mytable += "";
			menuTable.innerHTML += mytable;
			/*.........*/

			var mymenutable = "";
			for (var i = 0; i < myvar; i++) {
				var menutopitem =  menulist[i];
				mymenutable += "<button type='button' class='btn btn-primary'>"+menutopitem.tagName+"&nbsp; |</button>";
			}    
			mymenutable += "";
			menutopTable.innerHTML += mymenutable;

			/*....DropDown.....*/
			var mymenudrop = "<select name='tagName' id='tagName'>";
			mymenudrop  += "<option value=''>Select Tag</option>";
			for (var i = 0; i < myvar; i++) {
				var menudropitem =  menulist[i];
				mymenudrop += "<option   value="+menudropitem.tagName+">"+menudropitem.tagName+"</option>";
			}    

			menutopDrop.innerHTML += mymenudrop;
		},
		error: function (){
			menuTable.innerHTML = "Server error, unable to get data " ;
			menutopTable.innerHTML = "Server error, unable to get data " ;
		}
	});
};
/*
window.GetImagesByTag = function () {   

	$.ajax({
		url: 'http://localhost:8082/Photo/get/tagmenu.spring',
		type: 'GET',
		contentType: 'application/json',
		success: function (response) {
			var myvar = response.length;
			var mytable = "<font color=red><b>Tags</b></font> ";

			var menulist = response;
			for (var i = 0; i < myvar; i++) {
				var contentitem =  menulist[i];
				mytable += "<a href='get/imagesbytag.spring?bytag="+contentitem.tagName+"'><button type='button' onClick='GetImagesByTag()' class='btn btn-primary'>"+contentitem.tagName+"</button></a>";
			}    
			mytable += "";
			menuTable.innerHTML += mytable;
			.........

			var mymenutable = "";
			for (var i = 0; i < myvar; i++) {
				var menutopitem =  menulist[i];
				mymenutable += "<button type='button' class='btn btn-primary'>"+menutopitem.tagName+"&nbsp; |</button>";
			}    
			mymenutable += "";
			menutopTable.innerHTML += mymenutable;

			....DropDown.....
			var mymenudrop = "<select name='tagName' id='tagName'>";
			mymenudrop  += "<option value=''>Select Tag</option>";
			for (var i = 0; i < myvar; i++) {
				var menudropitem =  menulist[i];
				mymenudrop += "<option   value="+menudropitem.tagName+">"+menudropitem.tagName+"</option>";
			}    

			menutopDrop.innerHTML += mymenudrop;
		},
		error: function (){
			menuTable.innerHTML = "Server error, unable to get data " ;
			menutopTable.innerHTML = "Server error, unable to get data " ;
		}
	});
};

*/