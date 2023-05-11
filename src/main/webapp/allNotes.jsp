<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.query.*"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<%@page import="com.helper.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv= "Content-type" content= "text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>All Notes</title>
		<%@include file="allJs_Css.jsp" %>
	</head>
	<body>
		
		<div class= "container-fluid p-0 m-0">
  			<%@include file="navbar.jsp" %>
  		</div>
  		<br>
  		<div class= "container">
			<h1>All your notes :</h1>
			<br>
			<div class= "row">
				<div class= "col-12">
					<%
						Session s = FactoryProvider.getFactory().openSession();
						Query q = s.createQuery("from Note");
						List<Note> list = q.list();
						for(Note note : list)
						{
					%>
							<div class="card mt-2">
								<img class="card-img-top m-4 mx-auto" src="img/notes.png" 
									style="max-width: 80px;" alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title"><%= note.getTitle() %></h5>
									<p class="card-text"><%= note.getContent() %></p>
									<a href="DeleteServlet?note_id=<%= note.getId() %>" 
										class="btn btn-danger float-right">Delete</a>
									<a href="edit.jsp?noteId=<%= note.getId() %>" 
										class="btn btn-primary float-right mx-2">Update</a>
								</div>
							</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</body>
</html>