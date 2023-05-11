<%@page import="com.entity.*"%>
<%@page import="com.helper.*"%>
<%@page import="org.hibernate.cfg.*"%>
<%@page import="org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv= "Content-type" content= "text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Edit</title>
		<%@include file="allJs_Css.jsp" %>
	</head>
	<body>
		<div class= "container-fluid p-0 m-0">
	  		<%@include file="navbar.jsp" %>
	  	</div>
		
		<%
			int noteId= Integer.parseInt(request.getParameter("noteId").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note)s.get(Note.class, noteId);
			
		%>
		<div class= "container">
			<h1 style= "text-align: center;">Edit your note </h1>
			<form action="EditServlet" method="post">
				<input type="hidden" value="<%= note.getId() %>" name= "noteId">
				<div class="form-group">
					<label for="title">Note Title</label> 
					<input type="text" class="form-control" name ="title"
						placeholder="Enter the title" id="title" value="<%= note.getTitle() %>" required>
				</div>
				<div class="form-group">
					<label for="content">Note Content:</label> 
					<textarea id="content" name= "content" placeholder="Enter your content here" 
						class="form-control" style= "height: 300px;" required><%= note.getContent() %></textarea>
				</div>
				<button type="submit" class="btn btn-success float-right">Save Note</button>
			</form>
		</div>
	</body>
</html>