<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>WelCome | tag your pictures</title>

<!-- css -->
<link rel="stylesheet" href="css/profile.css" type="text/css"	media="screen">
	
<!-- bootstrap -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
<!-- jquery -->
  <script 	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- JavaScript -->
  <script src="script/profile.js"></script>

  <script type="text/javascript">
		$(document).ready(function() {
			$('.formContainer').hide();
			$('#btn-uploadHide').click(function() {
				$('.formContainer').hide();
			});
			$('#btn-uploadshow').click(function() {
				$('.formContainer').hide();
				$('#form_container').show();
			});
		});
  </script>
 
  
<script type="text/javascript">
$(document).ready(function(){
	  $("h4").click(function(){
	    $('.hidden').hide();
	    $(this).next().toggle();      
	  });
	});

</script>
 
  
<!-- head end -->
</head>

<!-- body -->
<body onload="firstCall()">
<h3 class="clear"></h3>
	<div id="newsTable" class="clear"></div>
</body>
	<div id="header">
		<h1>
			<a href="allimages.spring?pageNo=1"><img src="images/logo.png" alt="pcc"></a>
		</h1>

		<!-- top nav -->
		<ul id="topnav">
			<li><a href="logout.spring">Logout</a></li>
		</ul>
		<!-- topnav end -->
	</div>
	<!-- Main nav end -->
	<div id="content">
		<div id="middle_section">
			<ul class="nav nav-tabs">
			    <li class="active">
			        <a href="#">Home</a>
			    </li>
			</ul>
			</div>
<!-- header end -->
	<hr>
	
	<!-- adds tab -->
	<div class="row">
    	<div class="col-sm-3" style="background-color:none;">
    ADDS
    </div>
    
    <!-- photos tab -->
	<div class="col-sm-6" style="background-color:lavenderblush;">
	
    	<div align="center" >
    	    	<!-- <div class="btn-group" align="center" data-toggle="buttons-radio"> -->
	    	<button type="button"  id="btn-uploadshow" class="btn btn-primary btn-block">Upload</button>
	    	<button type="button" id="btn-uploadHide" class="btn btn btn-primary active">Clear</button> 
    	</div>
	

		<div class="formContainer" align="center" id="form_container">
     			<form  class="form-inline" role="form"  style="align:center;" action="upload1.spring" method="post"
						enctype="multipart/form-data">
					<div class="form-group">
      					<label class="sr-only" for="text">Description :</label>
      					<input type="text"  name="imageDesc" class="form-control" id="imageFile" placeholder="Enter Description about photo">
    				</div>
    				<div class="form-group">
      					<label class="sr-only" for="text">Upload File:</label>
      					<input type="file" name="imageFile" class="form-control" id="imageFile" placeholder="Choose uplode file">
    				</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
	  </div>
<!-- pagination --><div>
<a href="viewComments.spring?commentidf=${e.getCommentid()}">Show Comments</a>
		<table>
				<tr> <td>
					<img  alt="${imagePojoList.getImageName()}" style="align:center;" width= 500px; height= 500px;
										 src="file:///${imagePojoList.getImg_Url()}" />
		    	</td></tr>
				<c:forEach var="ce" items="${viewcommentsList}">
				<tr> <td>
					<textarea cols="90%" rows="2" name="comment" readonly>${ce.getComments()}</textarea>
		    	</td></tr></c:forEach>
    	</table>
    	</div>
    	</table>
		</div>
			
			
    <div class="col-sm-3" style="background-color:none;">
    ADDS
    </div>
    </div>
    </div>

</body>
</html>