<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session,java.util.*,java.text.*"%>
<%@page import="com.entities.Note" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes:Note Taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0 ">
 <nav class="navbar navbar-expand-lg navbar-dark cyan ">
  <a class="navbar-brand" href="index.jsp">Notes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="add_notes.jsp">Add Note</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link disabled" href="all_notes.jsp">Show Notes</a>
      </li>
    </ul>
   
    
  </div>
</nav>
  <br>
  </div>
  <div class="container">
  <h1 class="text-uppercase">All Notes:</h1>
  <div class="row">
  <div class="col-12">
  
  <% 
 String title1=request.getParameter("search").trim();
 
  Session s=FactoryProvider.getFactory().openSession();
  Query q= s.createQuery("from Note where title='"+title1+"'");
 List<Note> list = q.list();

 for(Note note:list)
 {
	 Date date=note.getAddedDate();
	 SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
	 String stringDate= DateFor.format(date);
	 %>
	 <div class="card mt-3" >
  <img src="img/dokument.png" class="card-img-top m-4 mx-auto" style="max-width:100px;" alt="...">
  <div class="card-body px-5">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <p> <b class="text-primary"><%=stringDate %></b></p>
    <div class="container text-center mt-2">
     <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
      <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
    </div>
   
  </div>
</div>
	 

	 <%} s.close(); %>

  
  
 
  

  
  </div>
  
  </div>
  
 </div>
</body>
</html>