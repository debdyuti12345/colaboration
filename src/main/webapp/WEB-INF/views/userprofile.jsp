<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Blog</title>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="my-style.css">
  <link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">  
	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="/resources/css/footer-distributed.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
img {
    border-radius: 8px;
}
</style>
</head>
<body>
<%@ include file='inlineheader.jsp'%>
<br>
<br>

    <div class="container-fluid">
<div class="jumbotron">
  <div class="row">
    <div class="col-md-6">
         
         <img class="img-circle" alt="Cinque Terre" src="<c:url value="/resources/images/${user.userId}.jpg" />" width="400" height="300"> 
  
  </div>
   <br>
   <div class="col-md-6"><span class="pull-center">
    
   <h3><a class="btn btn-lg btn-success">Name:</a> ${user.name }</h3>
   <h3><a class="btn btn-lg btn-success">Username:</a> ${user.username }</h3> 
	<h3><a class="btn btn-lg btn-success">Email id:</a> ${user.email}</h3>
	<h3><a class="btn btn-lg btn-success">Location:</a> ${user.location }</h3>
	</div>
	</span>
	

     </div>
     </div>
     </div>
     <%@include file="footer.jsp"%>
  </body>
</html>