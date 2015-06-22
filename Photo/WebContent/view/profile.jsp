<!DOCTYPE html>
<html>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>WelCome | tag your pictures</title>
<link rel="stylesheet" href="css/style_blue.css" type="text/css">
<link rel="stylesheet" href="css/feedback.css" type="text/css"
	media="screen">

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
		<%-- 		<table>
			<img  alt="name" src="${img_url}"/>
   </table> --%>
   
    <table class="display dataTable" id="example"
		aria-describedby="example_info">
		<thead>
			<tr role="row">
				<th class="sorting_asc" role="columnheader" tabindex="0"
					aria-controls="example" rowspan="1" colspan="1"
					style="width: 100px;" aria-sort="ascending"
					aria-label="User Id: activate to sort column descending">
					Image ID</th>

					</tr>
		</thead>

		<tfoot>
		</tfoot>
		<tbody role="alert" aria-live="polite" aria-relevant="all">
			<tr class="odd">
				<c:forEach var="e" items="${imagePojoList}">
					<tbody role="alert" aria-live="polite" aria-relevant="all">
						<tr class="odd">

							<td width="30%"  class=" sorting_1"><span
								style="float: left;"> </span> <img style="width:100px; height:100px;" alt="name" src="${e.getImg_Url()}" /> </td>

														
						</tr>
					</tbody>
				</c:forEach>
	</table> 


</body>
</html>