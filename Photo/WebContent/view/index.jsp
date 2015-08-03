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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- JavaScript -->
   <script src="script/index.js"></script>
   
<!-- upload form show & hide -->
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
 <!-- comments show & hide -->
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
	<body onload="contentnewslisting();">

	<div id="header">
		<h1>
			<a href="allimages.spring?pageNo=1"><img src="images/logo.png" alt="pcc"></a>
		</h1>

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
<!-- pagination -->

<table style="align: center;">
		<tr><td>
				Showing 1 to ${i} of <b> ${param.pageNo} </b>entries
						</td></tr>
						<tr><td>
	<!-- displaying Previous link except for the 1st page  -->
							<c:choose> 
								<c:when test="${param.pageNo gt 1}">
									<a href="allimages.spring?pageNo=${param.pageNo-1}">Previous &nbsp;</a>
								</c:when> 
									<c:otherwise>Previous</c:otherwise>   
							</c:choose>
	<!-- Displaying page Numbers -->
							<c:forEach begin="1" end="${i}" var="j">
								<c:choose>
									<c:when test="${param.pageNo eq j}">
										${j}
									</c:when>
									<c:otherwise>
										<a href="allimages.spring?pageNo=${j}">${j} </a> 
								</c:otherwise>
								</c:choose>
							</c:forEach>
	<%--For displaying Next link --%>
								<c:choose> 
								<c:when test="${param.pageNo lt i}">
									<a href="allimages.spring?pageNo=${param.pageNo+1}">Next &nbsp; </a>
								</c:when> 
									<c:otherwise>Next</c:otherwise>   
							</c:choose>
						
					</td></tr> 
					
		<!-- comments -->

	

					<tr><td><br><br>		
    
<!-- pagination end-->

<div id="newsTable" class="clear"> </div>
<div class="container" id="imagetable" align="justify"></div>
					<c:forEach var="e" items="${imagePojoList}">
								<tr><td>${e.getImageDesc()}<br> ${e.getImageName()} </td></tr>
										<tr><td>
		    <img  alt="${e.getImageName()}" style="align:center;" width= 500px; height= 500px;
										 src="file:///${e.getImg_Url()}" />
									</td></tr>
										<tr><td>
				<h4>Comment</h4>
		<div id="hidden" style="display:none">
			<form  class="form-inline" role="form"  style="align:center;" action="addComment.spring" method="post">
					<input type="hidden"  name="commentid"  value="${e.getCommentid()}" class="form-control" id="commentid" >
    				<label class="sr-only" for="text">Comment :</label> <br> <textarea cols="90%" rows="2"
						name="comment" ></textarea>
    				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div></td></tr><tr><td>
		
		
		<a href="viewComments.spring?commentidf=${e.getCommentid()}">Show Comments</a>
		<div id="newsCommentsTable"> </div>
		<c:forEach var="ce" items="${viewcommentsList}">
			<textarea cols="90%" rows="2" name="comment">${ce.getComments}</textarea>
    	</c:forEach>
    		</td></tr>
    		</c:forEach>
    		</td>
    		</tr>
    		</table>
    	
		</div>
			</div>
			
    <div class="col-sm-3" style="background-color:none;">
    ADDS
    </div>
    </div>
    

</body>
</html>