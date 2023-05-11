package com.servlet;

import java.io.*; 
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import org.hibernate.*;
import com.entity.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Note note = new Note(title, content, new Date());
			
			//save this to database
			
			FactoryProvider factory = new FactoryProvider();
			Session session = factory.getFactory().openSession();
	
			Transaction tx = session.beginTransaction();
			session.save(note);
			
			tx.commit();
			session.close();
			PrintWriter writer = response.getWriter();
			
			response.setContentType("text/html");
			writer.println("<h1 style='text-align:center;'>Note is added successfully.</h1>");
			writer.println("<h1 style='text-align:center;'><a href='allNotes.jsp'>View all notes</a></h1>");
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
