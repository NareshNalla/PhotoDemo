<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>

		<form:form action="upload1.spring" method="post" commandName="image" enctype="multipart/form-data" >
			<p>
				<form:label path="imageName">Name :</form:label><form:input type="text" path="imageName"/>
			</p>
			
			<p>
				<form:label path="imageName">Upload File:</form:label><form:input type="file" path="imageFile"/>
			</p>
			
			<p class="remember"><input type=submit class="btn_blue" value=submit></p>
			
		</form:form>
		

</body>
</html>