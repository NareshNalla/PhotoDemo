window.contentnewslisting = function () {   
  
    	$.ajax({
            url: '/api/content/listing/v1?contentType=NEWS',
            type: 'GET',
            contentType: 'application/json',
            success: function (resp) {
        	    var myvar = resp.contentList.length;
        	    var mytable = " <table cellpadding=\"10\" cellspacing=\"10\" ><tbody>";
        	    mytable  += "<tr><th height='50'><b>  NewsArticle Name  </b></th>" +
        	    		" <th height='50'><b>  NewsArticle S3 URL Name  </b></th>"+ 
        	    		" <th height='50'><b>  NewsArticle Priority  </b></th>"+ 
        	    		" <th height='50'><b>  NewsArticle Short Description  </b></th>"+ 
        	    		" <th height='50'><b>  NewsArticle Heading </b></th>"+ 
        	    		" <th height='50'><b>  NewsArticle Sub Heading  </b></th>"+ 
        	    		" <th height='50'><b>  NewsArticle Contenttype  </b></th>"+ 
        	    		" <th height='50'><b>  NewsArticle MimeType  </b></th>"+ 
        	    		" <th height='50'><b>  NewsArticle Author  </b></th>"+ 
        	    		" <th height='50'><b>  NewsArticle PublishDate  </b></th>"+
        	    		" <th height='50'><b>  NewsArticle PublishEndDate  </b></th><br />   ";
        	    var newslist = resp.contentList;
        	    for (var i = 0; i < myvar; i++) {
        	    	 	  var contentitem =  newslist[i];
        	    	 	  mytable += "</tr><tr>";
        	    		  mytable += "<td>"+contentitem.name+"</td>";
        	    		  mytable += "<td><a href=\""+contentitem.url+"\" target=\"_blank\">"+contentitem.url+"</a></td>";
        	    		  mytable += "<td>"+contentitem.priority+"</td>";
        	    		  mytable += "<td>"+contentitem.shortdescription+"</td>";
        	    		  mytable += "<td>"+contentitem.heading+"</td>";
        	    		  mytable += "<td>"+contentitem.subheading+"</td>";
        	    		  mytable += "<td>"+contentitem.contenttype+"</td>";
        	    		  mytable += "<td>"+contentitem.mimetype+"</td>";
        	    		  mytable += "<td>"+contentitem.author+"</td>";
        	    		  mytable += "<td>"+new Date(contentitem.publishdate)+"</td>";
        	    		  mytable += "<td>"+new Date(contentitem.publishenddate)+"</td>";
        	    		  mytable += "</tr><tr>";
        	    	}    
        		mytable += "</tr></tbody></table>";
        		newsTable.innerHTML += mytable;
             },
            error: function (){
            	newsTable.innerHTML = "Server error, unable to get data " ;
            }
         });
    };
