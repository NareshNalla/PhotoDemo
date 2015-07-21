<!DOCTYPE html>
<html>


<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>WelCome | tag your pictures</title>
<link rel="stylesheet" href="css/style_blue.css" type="text/css">
<link rel="stylesheet" href="css/feedback.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/profile.css" type="text/css"media="screen">
<script src="view/profile.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {

    $('.container').hide(); 

    $('#btn-post').click(function() {

        $('.container').hide();

    });

    $('#btn-game').click(function() {

        $('.container').hide();
        $('#game_container').show();
    });
});
</script>

</head>
<body>
	<div id="header">
			<h1>
			<a href="allimages.spring?pageNo=1"><img src="images/logo.png" alt="pcc"></a>
		</h1>

			<!-- top nav end -->
			<ul id="topnav">
				<li><a href="logout.spring">Logout</a></li>
			</ul>
			<!-- topnav end -->


		</div>
		<!-- header end -->
		<div id="content">
			<div id="middle_section">
				<h3>My Dashboard</h3>
				<hr>
				
		   <div class="center">
		   <div class="btn-group" align="center" data-toggle="buttons-radio"><!-- onclick="uploadHide()" -->
  <button id="btn-post" class="btn btn btn-primary active" type="button" >Clear</button>
  <button id="btn-game" class="btn btn btn-primary" type="button" >Upload</button>
</div>
		   
				
<div class="container" align="center" id="game_container" >


		<form style="align:center;" style="align:center;" action="upload1.spring" method="post"  enctype="multipart/form-data" >
			<p>
				<lable path="imageDesc">Description :</lable><input type="text" name="imageDesc"/>
			</p>
			
			<p>
				<lable path="imageFile">Upload File:</lable><input type="file" name="imageFile"/>
			</p>
			
			<p class="remember"><input type=submit class="btn_blue" value=submit></p>
			
		</form>
		
	</div>
	<div class="dataTables_info" id="example_info">
						<h5>Showing 1 to ${i} of <b> ${param.pageNo} </b>entries </h5>
						<div style="position: absolute; top: left: 500px;">
							<h6>
								&nbsp;
								<%--For displaying Previous link except for the 1st page --%>
								<c:if test="${param.pageNo> 1}">

									<td><a href="allimages.spring?pageNo=${param.pageNo-1}">Previous
											&nbsp;</a></td>
								</c:if>

								<c:forEach begin="1" end="${i}" var="j">
									<c:choose>
										<c:when test="${param.pageNo eq j}">
											<td>${j}</td>
										</c:when>
										<c:otherwise>
											<a href="allimages.spring?pageNo=${j}">${j} </a>&nbsp; 
									</c:otherwise>
									</c:choose>
								</c:forEach>

								<%--For displaying Next link --%>

								<c:if test="${param.pageNo lt i}">
									<td><a href="allimages.spring?pageNo=${param.pageNo+1}">Next
											&nbsp; </a></td>
								</c:if>
	
	
</div>
</div>
				
			
    <table  style="align:center;">
			<tr>
				<td>
				<tr><td>
				<c:forEach var="e" items="${imagePojoList}"> <table border="1"><tr><td> ${e.getImg_Url()} <br> <img  style="align:center; width:500px; height:500px;" alt="name" src="${e.getImg_Url()}" /> 
				   </td></tr></table> <br> </td>
					</tr>
									
				</c:forEach>
				
	</table> 
	<div class="dataTables_info" id="example_info">
						Showing 1 to ${param.i} of <b> ${param.pageNo} </b>entries
						<div style="position: absolute; top: left: 500px;">
							<h6>
								&nbsp;
								<%--For displaying Previous link except for the 1st page --%>
								<c:if test="${param.pageNo> 1}">

									<td><a href="allimages.spring?pageNo=${param.pageNo-1}">Previous
											&nbsp;</a></td>
								</c:if>

								<c:forEach begin="1" end="${i}" var="j">
									<c:choose>
										<c:when test="${param.pageNo eq j}">
											<td>${j}</td>
										</c:when>
										<c:otherwise>
											<a href="allimages.spring?pageNo=${j}">${j} </a>&nbsp; 
									</c:otherwise>
									</c:choose>
								</c:forEach>

								<%--For displaying Next link --%>

								<c:if test="${param.pageNo lt i}">
									<td><a href="allimages.spring?pageNo=${param.pageNo+1}">Next
											&nbsp; </a></td>
								</c:if>
	
	
</div>
</div>
</div>

</body>
</html>