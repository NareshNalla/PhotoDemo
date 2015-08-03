 window.contentnewslisting = function () {   
  
    	$.ajax({
            url: 'http://localhost:8082/Photo/get/images.spring?pageNo=1',
            type: 'GET',
            contentType: 'application/json',
            success: function (response) {
        	    var myvar = response.length;
        	    var mytable = " <table cellpadding=\"10\" cellspacing=\"10\" ><tbody>";
        	    mytable  += "";
        	    		
        	    var newslist = response;
        	    for (var i = 0; i < myvar; i++) {
        	    	 	  var contentitem =  newslist[i];
        	    	 	  mytable += "<tr>";
        	    		  mytable += "<td>"+contentitem.imageName+"<br>"+contentitem.imageDesc+"<br>";
        	    		  mytable +="</td></tr>"+
        	    		  "<tr><td> <img alt="+contentitem.imageName+" style=\"align:center;\" width= 650px; height= 600px; src="+contentitem.img_Url+" /></td>";
        	    		        	    		  
        	    	}    
        		mytable += "</tr></tbody></table>";
        		newsTable.innerHTML += mytable;
        		
             },
            error: function (){
            	newsTable.innerHTML = "Server error, unable to get data " ;
            }
         });
    };

