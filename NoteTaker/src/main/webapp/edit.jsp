<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container-fluid p-0 m-0">
  <%@include file="navbarjsp.jsp" %>
  </div>
  <div class="container">
  <h1>Edit your note</h1>
  <br>
  <%
  int noteId= Integer.parseInt(request.getParameter("note_id").trim());
  Session s= FactoryProvider.getFactory().openSession();
  
  Note note=(Note)s.get(Note.class,noteId);
  %>
  <form action="UpdateServlet" method="post">
  <input value="<%=note.getId() %>" name="noteId" type= "hidden" />
  <div class="mb-3">
    <label for="title" class="form-label">Note title</label>
    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Here" value="<%= note.getTitle() %>" />
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
   <textarea name="content" required id="content" placeholder="enter your content here" class="form-control" style="height:300px;"><%= note.getContent() %>
   </textarea>
  </div>
  <div class="container text-center">
   <button type="submit" class="btn btn-success">Save</button>
  </div>
 
</form>
  </div>
</body>
</html>