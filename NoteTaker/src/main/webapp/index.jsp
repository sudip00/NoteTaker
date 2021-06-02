<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>Note Taker: Home Page</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
  <div class="container-fluid p-0 m-0">
  <%@include file="navbarjsp.jsp" %>
  <br>
  <div class="card my-5">
  <img alt="" class="img-fluid mx-auto" style="max-width:400px;" src="img/aarambha.png">
  <h1 class="text-primary text-uppercase text-center mt-3">Start Taking your notes</h1>
  
  <div class="container text-center">
  <form action="add_notes.jsp">
  <button class="btn btn-outline-primary text-center">Start here</button>
  </form>
  </div>
  
  </div>
  
  </div>

	
</body>



</html>
