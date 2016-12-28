<!DOCTYPE html>
<html>
  <head>
    <title>My Web Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
   <link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">  
	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="/resources/css/footer-distributed.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
 <!-- ====== -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="resources/css/css1.css" rel="stylesheet" type="text/css">
  </head>
  <body>
 
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">

                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>

            </button>
            <c:set var="img" value=<c:url value="/resources/images/diginxt.png"/>/>
            <a class="navbar-brand" href="home">
                           </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>Welcome Administrator</li>
                <li><a href="logout">Log Out</a></li>
            </ul>
        </div>
    </div>
</nav>

<!--  ========= Body ========= -->
 


<!-- <div class="container">
<br><br><br>
<br>

<h3><a href="admin/listuser" >Manage Users</a></h3>
<h3><a href="admin/listblog" >Manage Blogs</a></h3>
<h3><a href="admin/listforum" >Manage Forums</a></h3>
</div> -->
<!-- ======================== -->

    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-11">
            <h1 class="text-warning">You are Admin user</h1>
            <p></p><h3>you &nbsp;can manage users,manage blog,manage forum.</h3><p></p>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-info">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center text-success">Admin Work Principal</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <img src="resources/images/user.jpg" class="center-block img-circle img-responsive">
            <h3 class="text-center"><a href="admin/listuser" >Manage Users</h3>
            
          </div>
          <div class="col-md-4">
            <img src="resources/images/blog.jpg" class="center-block img-circle img-responsive">
            <h3 class="text-center"><a href="admin/listblog" >Manage Blog</h3>
            
          </div>
          <div class="col-md-4">
            <img src="resources/images/forum.jpg" class="center-block img-circle img-responsive">
            <h3 class="text-center"><a href="admin/listforum" >Manage Forum</h3>
            
          </div>
        </div>
      </div>
    </div>
  

</body></html>

<!-- ======================== -->
 <%@include file="footer.jsp"%>
  </body>
</html>