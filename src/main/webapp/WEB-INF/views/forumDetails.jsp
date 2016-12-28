<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>

<html>
<head>
	<title>Home</title> 
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery.js"></script>
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<!-- stylist jsp -->
	 <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="resources/css/css2.css" rel="stylesheet" type="text/css">
	</head>
<body>
<%@ include file='inlineheader.jsp'%>
<div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <img src="" class="img-responsive">
            <h1>Congratulation, ${param.user}</h1>
            <p></p>
            <p>Your Forum posts are attached here
              <br>
              <br></p>
         
          </div>
<div class="col-md-6">
<table class="table">
	<thead colspan="3">
	<th><h1>Details</h1></th>
	</thead>
	<tbody>
		
		<tr>
		<td><h3>Features</h3></td>
		<td><h3>Details</h3></td>
		</tr>
		<tr>
		<td><b>CREATED BY:</b></td>
		<td>${param.user}</td>
		</tr>
		<tr>
		<td><b>FORUM TITLE</b></td>
		<td>${param.fTitle}</td>
		</tr>
		<tr>
		<td><b>FORUM CONTENT</b></td>
		<td>${param.fcontent}</td>
		</tr>
		
		</tbody>
	</table>
	</div>
	</div>
	</div>
	</div>
	
	</body>
	</html>