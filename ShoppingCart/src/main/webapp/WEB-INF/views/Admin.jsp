<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Welcome Admin</title>
</head>
<head>
<style>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     <sec:authorize access="hasRole('ROLE_ADMIN')">
      <a class="navbar-brand" href="Admin">Admin Home</a>
        </sec:authorize>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ManageProducts">Manage Products</a></li>
      <li><a href="ManageSupplier">Manage Suppliers</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="Admin">Welcome...<%=session.getAttribute("loggedInUser")%></a></li>
      <li><a href="LogoutSuccess"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
 	<div class="container"></div>
	<div class="container">
		<br>
		<center>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->

			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
			
        <img src="<c:url value="/resources/images/phone1.jpg"/>" alt="Chania" width="300" height="200">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/phone2.jpg"/>" alt="Chania" width="300" height="200">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/phone3.jpg"/>" alt="Chania" width="300" height="200"> 
      </div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</center>
	<div class="container-fluid bg-3 text-center">
		<h3>Other Products</h3>
		<br>
		<div class="row">
			<div class="col-sm-3">
				<p>iphone</p>
				<img src="<c:url value="/resources/images/phone3.jpg"/>"
					class="img-responsive" style="width: 100%" alt="Image">
			</div>
			<div class="col-sm-3">
				<p>samsung</p>
				<img src="<c:url value="/resources/images/phone7.jpg"/>"
					class="img-responsive" style="width: 100%" alt="Image">
			</div>
			
			<div class="col-sm-3">
				<p>sony</p>
				<img src="<c:url value="/resources/images/phone4.jpg"/>"
					class="img-responsive" style="width: 100%" alt="Image">
			</div>
			<div class="col-sm-3">
				<p>redmi</p>
				<img src="<c:url value="/resources/images/phone9.jpg"/>"
					class="img-responsive" style="width: 100%" alt="Image">
			</div>
		</div>
	</div>
	<br>
	<br>
 
    <div class="container">
    	 <div class ="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">@DEEPU-All rights reserved</div>
    
</body>