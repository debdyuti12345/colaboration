<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
     <title>Home</title>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
    rel="stylesheet" type="text/css">
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
    <link href="resources/css/csss" rel="stylesheet" type="text/css">
    
 
  
   
	
	<script src="https://code.jquery.com/jquery.js"></script>

<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   </head>
  
  
          <!-- ==== Starting modal ==== -->
	
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Recommend a Friend</h4>
        </div>
        <div class="modal-body">
         <form class="form-horizontal" name="loginform" method="post" action="login">
    <div class="form-group">
        <label class="control-label col-md-4" for="employee_code">Employee Code</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="employee_code" name="employee_code" placeholder="Enter Your Employee Code"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="userpassword">Password</label>
        <div class="col-md-6">
            <input type="password" class="form-control" id="userpassword" name="userpassword" placeholder="Password"/>
        </div>
    </div>
    
    <div class="form-group">
        <div class="col-md-6">
			<a href="#" data-dismiss="modal" class="btn">Close</a>
            <button type="submit" value="Submit" class="btn btn-custom pull-right">Log-in</button>
        </div>
    </div>
</form>
        </div><!-- End of Modal body -->
        </div><!-- End of Modal content -->
        </div><!-- End of Modal dialog -->
    </div>
    
    <!-- ================================== -->
      
    <div id="fullcarousel-example" data-interval="2500" class="carousel hidden-lg hidden-md hidden-sm hidden-xs slide"
    data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" id="3">
          <img src="resources/css/14.png">
          <div class="carousel-caption">
            <h2>Title</h2>
            <p>Description</p>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
    </div>
    <div class="carousel slide" id="fullcarousel-example" data-interval="2500"
    data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" id="1">
          <img src="resources/css/3.jpg">
          <div class="carousel-caption">
            <h2>Colaboration World</h2>
            <p></p>
          </div>
        </div>
        <div class="item">
          <img src="resources/css/37.jpg">
          <div class="carousel-caption">
            <h2>Colaboration world</h2>
            <p></p>
          </div>
        </div>
        <div class="item">
          <img src="resources/css/2.jpg">
          <div class="carousel-caption">
            <h2>Colaboration world</h2>
            <p></p>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
    </div>
      <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="text-warning">location of our place</h1>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3684.940898781337!2d88.34996101453567!3d22.54388658519763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a02771765ba0f41%3A0x1bd0d3b2e93c7c16!2sAzimganj+House!5e0!3m2!1sen!2sin!4v1477570813165"
            width="400" height="300" frameborder="0" style="border:0" allowfullscreen=""></iframe>
          </div>
          <div class="col-md-6">
            <div id="fullcarousel-example" data-interval="1500" class="carousel hidden-lg hidden-md hidden-sm hidden-xs slide"
            data-ride="carousel">
              <div class="carousel-inner">
                <div class="item active" id="3">
                  <img src="resources/css/niit.jpg">
                  <div class="carousel-caption">
                    <h2>Title</h2>
                    <p>Description</p>
                  </div>
                </div>
              </div>
              <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
              <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
            </div>
            <div class="carousel slide" id="fullcarousel-example" data-interval="1500"
            data-ride="carousel">
              <div class="carousel-inner">
                <div class="item active" id="1">
                  <img src="resources/css/31.jpg">
                  <div class="carousel-caption">
                    <h2>Colaboration World</h2>
                    <p></p>
                  </div>
                </div>
                <div class="item">
                  <img src="resources/css/q.jpg">
                  <div class="carousel-caption">
                    <h2>Colaboration world</h2>
                    <p></p>
                  </div>
                </div>
                <div class="item">
                  <img src="resources/css/s.jpg">
                  <div class="carousel-caption">
                    <h2>Colaboration world</h2>
                    <p></p>
                  </div>
                </div>
              </div>
              <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
              <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="carousel slide" id="fullcarousel-example" data-interval="5000"
    data-ride="carousel">
      <div class="carousel-inner">
        <div class="item">
          <img src="resources/css/19.jpg">
          <div class="carousel-caption">
            <h2>Colaboration world</h2>
            <p></p>
          </div>
        </div>
        <div class="item">
          <img src="resources/css/11.jpg">
          <div class="carousel-caption">
            <h2>Colaboration world</h2>
            <p></p>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
      <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
    </div>
    <footer class="section section-primary">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <h1>Collaboration</h1>
            <p>Welcome to our Colaboration World</p>
          </div>
          <div class="col-sm-6">
            <p class="text-info text-right">
              <br>
              <br>
            </p>
            <div class="row">
              <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 hidden-xs text-right">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
     <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
  </body>

</html>
