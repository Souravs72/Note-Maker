<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add notes</title>
<%@include file="allJs_Css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>

	<div class= "container mt-5">
	<!-- This is add form -->
	<h3>Please fill in your detail</h3>
		<form action="SaveNoteServlet" method="post">
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