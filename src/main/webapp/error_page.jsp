<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Something went wrong</title>
		
		<!--bootstrap css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
        		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--  -->	
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
	</head>
	<body>
		<div class= "container text-center mt-4">
			<img src= "img/errorjpg.jpg" class="img-fluid"/>
			<h3 class="display-3">Sorry. Something went wrong &#128533;</h3>
			<a href="login" class="btn btn-primary btn-lg text-white mt-3">Login</a>
			
		</div>
	</body>
</html>