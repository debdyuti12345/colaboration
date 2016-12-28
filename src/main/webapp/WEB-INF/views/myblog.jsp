<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">  
	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="/resources/css/footer-distributed.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>    
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  td
{
  padding-top: 10px;
  padding-bottom: 10px;}
  </style>
</head>
<body>
<%@ include file='inlineheader.jsp'%>



<div class="jumbotron">
<div class="row">
  <div class="col-md-6">
   
   
  <img src="/colaboration/resources/images/blog.jpg" class="img-circle" alt="Cinque Terre" width="250" height="250">
            <h3 class="text-left text-primary">Add Blog</h3>
  </div>
   <div class="col-md-6">
<c:url var="addAction" value="/user/openblog/addblog" ></c:url>
<div align="center">
		<form:form action="${addAction}" method="POST" commandName="blog">
<table border="0">
<tr>
                    <td colspan="2" align="center"><h2 class="text-primary">Add Your New Blog</h2></td>
                </tr>
<tr>
        <td align="right"><h3 class="text-success">Add Title :</h3></td>
        <td><form:textarea style="width: 300px; height: 35px;" path="blogTitle"  /></td>
    </tr>
    
    <tr>
        <td align="right"><h3 class="text-success">Add Blog :</h3></td>
        <td><form:textarea style="width: 350px; height: 150px;" path="blogcontent"/></td>
    </tr>
        <tr>
        <td colspan="2" align="center"><input type="submit" value="Add Blog" class="btn btn-default"></td>
    </tr>
</table>
</form:form>
</div>
</div>
</div>
</div>

<div  ng-app="repeatSample" class="section">
	<div class="container">

<!-- Angular script to generate the productlist and sorting -->
		<!-- ============================================================================================== -->

		<script>
			var b = ${blogs};

			angular.module('repeatSample', []).controller('repeatController',
					function($scope) {
						$scope.blogs = b;

						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; //set the sortKey to the param passed
							$scope.reverse = !$scope.reverse; //if true make it false and vice versa
						}

					});
		</script>

<!-- Textbox used to implement search option using Angular -->
		<!-- ============================================================================================== -->

		<div class="bs-component" ng-controller="repeatController">

			<form class="form-inline">
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>


			<!-- table to show data coming from the JSON file -->
			<!-- ============================================================================================== -->


			<table class="table table-striped table-hover table-bordered table-condensed">
				<thead>
					<tr>

						<!-- Performing sort functionality using angular both in ascending and descending manner -->
						<!-- ============================================================================================== -->

						<th ng-click="sort('title')"  bgcolor="#F5E9A1">Title <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('content')"  bgcolor="#F5E9A1">Content <span
							class="glyphicon sort-icon" ng-show="sortKey=='price'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('user')"  bgcolor="#F5E9A1">User <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('date')"  bgcolor="#F5E9A1">Date <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th bgcolor="#B3F4DB">More Info</th>

					</tr>
				</thead>
				<tbody>
					<!-- dynamically generating the table data -->
					<!-- ============================================================================================== -->

					<tr
						ng-repeat="blog in blogs|orderBy:sortKey:reverse|filter:search">
						<td>{{blog.blogTitle}}</td>
						<td>{{blog.blogcontent}}</td>
						<td>{{blog.user}}</td>
						<td>{{blog.date}}</td>

                          <td><a
							href="/colaboration/blogDetails?id={{blog.blogId}}&blogTitle={{blog.blogTitle}}&blogcontent={{blog.blogcontent}}&user={{blog.user}}"">Details</a></td>
						
						<!-- <td><a
							href="blogDetails?id={{blog.blogId}}&blogTitle={{blog.blogTitle}}&blogcontent={{blog.blogcontent}}&user={{blog.user}}">Details</a>
						</td> -->
					</tr>
				</tbody>
			</table>

		</div>
	</div>
</div>

<%@include file="footer.jsp"%>

</body>
</html>
<!-- <div class="jumbotron"> 
 <div class="row">
  <div class="col-md-6">
   
   
  <img src="/colaboration/resources/images/blog.jpg" class="img-circle" alt="Cinque Terre" width="250" height="250">
            <h3 class="text-center">Add Blog</h3>
  </div>
   <div class="col-md-6"> -->