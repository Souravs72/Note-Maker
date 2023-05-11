<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<%@include file="allJs_Css.jsp"%>
		<title>Note Maker</title>
	</head>
	<body>
	
		<div class="container-fluid p-0 m-0">
			<%@include file="navbar.jsp"%>
		</div>
		
		
		<!-- This is add form -->
		<div class="container my-5">
			<h3>Please fill in your detail</h3>
			<form action="saveNoteServlet" method="post">
				<div class="form-group">
					<label for="title">Note Title</label> 
					<input type="text" class="form-control" name ="title"
						placeholder="Enter the title" id="title" required>
				</div>
				<div class="form-group">
					<label for="content">Note Content:</label> 
					<textarea id="content" name= "content" placeholder="Enter your content here" 
						class="form-control" style= "height: 300px;" required></textarea>
				</div>
				<button type="submit" class="btn btn-primary float-right">Add Note</button>
			</form>
		</div>
		
	</body>
</html>