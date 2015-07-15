<!DOCTYPE html>
<html>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>WelCome | tag your pictures</title>
<link rel="stylesheet" href="css/style_blue.css" type="text/css">
<link rel="stylesheet" href="css/feedback.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/profile.css" type="text/css"media="screen">
	

</head>
<body>
	<div id="wrapper">

		<div id="header">
			<h1>
				<a href="#"><img src="images/logo.png" alt="pcc"></a>
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
    <table  style="align:center;">
			<tr style="align:center;">
				<td  style="align:center;">
				
				<c:forEach var="e" items="${imagePojoList}"> <img  style="align:center; width:500px; height:500px;" alt="name" src="${e.getImg_Url()}" /> <br> </td>
												
						</tr>
					
				</c:forEach>
	</table> 
</div>
</div>
</div>

</body>
</html>