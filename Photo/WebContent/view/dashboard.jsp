<!DOCTYPE html>
<html>
<title>WelCome | tag your pictures</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<div class="box_outer">
					<a href="upload.spring">Upload</a>
				</div>
			</div>

		</div>
	</div>
	<table class="display dataTable" id="example"
		aria-describedby="example_info">
		<thead>
			<tr role="row">
				<th class="sorting_asc" role="columnheader" tabindex="0"
					aria-controls="example" rowspan="1" colspan="1"
					style="width: 100px;" aria-sort="ascending"
					aria-label="User Id: activate to sort column descending">
					Image ID</th>

				<th class="sorting_asc" role="columnheader" tabindex="0"
					aria-controls="example" rowspan="1" colspan="1"
					style="width: 100px;"
					aria-label="Email: activate to sort column ascending">User
					Image Name</th>
				<th class="sorting" role="columnheader" tabindex="0"
					aria-controls="example" rowspan="1" colspan="1"
					style="width: 400px;"
					aria-label="View Profile: activate to sort column ascending">
					View Image</th>
					</tr>
		</thead>

		<tfoot>
		</tfoot>
		<tbody role="alert" aria-live="polite" aria-relevant="all">
			<tr class="odd">
				<c:forEach var="e" items="${it}">
					<tbody role="alert" aria-live="polite" aria-relevant="all">
						<tr class="odd">

							<td width="80%" class=" sorting_1"><span
								style="float: left;"> </span> ${e.getImg_id}</td>

							<td width="80%" class=" sorting_1"><span
								style="float: left;"> </span> ${e.getImg_title()}</td>
								
								<td width="80%" class=" sorting_1"><span
								style="float: left;"> </span> ${e.getImg_data()}</td>


							
						</tr>
					</tbody>
				</c:forEach>
	</table>


</body>
</html>