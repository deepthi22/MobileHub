<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>mobile Store</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style> 
  .navbar-brand {
  font-face=#FFFFFF;
  }
  
  .carousel-inner > .item > img,{
  .carousel-inner > .item > a > img 
      width: 30%;
      margin:auto;
  
  }
  .carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  min-height: 30px; 
  min-width: 80px;   /* Set slide height here */

}
  </style>
</head>
<body>







<nav class="navbar navbar-inverse navbar-top">

  <div class="container-fluid bg-3 text-center">
    <div class="navbar-header">
          <a class="navbar-brand" href="hi"><font  face="Gadget" size=10 color=""><span style=padding-right:20px><img src="<c:url value="/resources/images/logo.jpg"/>" width="30" height="30">MobiLeHuB</font> <i> <sub>live..love..talk..!!!</sub></span></a></i>
      
    </div>
    <ul class="nav navbar-nav navbar-right ">
    <li><a href="hi"><span class="glyphicon glyphicon-home"></span>Home</a></li>
    <li><a href="ManageProductUnknown">products</a></li>
      <li><a href="ContactUs"><span class="glyphicon glyphicon-earphone">ContactUs</span>
        </a>
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span>Sign up</a></li>
         <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
     
      <li><a href=""></a></li>
     </ul>
  </div>
</nav>


<div class="container bg-3 text-center">
  
    <div class="center-block">  
    
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      
    </ol>
    
   <!-- Wrapper for slides -->
    
    
    <div class="carousel-inner" role="listbox">
    
    
      <div class="item active">
         <img src="<c:url value="/resources/images/phone1.jpg"/>" alt="Chania" width="5000" height="100">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/phone2.jpg"/>" alt="Chania" width="5000" height="100">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/phone3.jpg"/>" alt="Chania" width="5000" height="100"> 
      </div>
      
      
       <div class="item">
         <img src="<c:url value="/resources/images/phone4.jpg"/>" alt="Chania" width="5000" height="100">
      </div>
      
          <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></div></div><br><br><br><br>
 

<div class="container">
            
  <div class="row">
    <div class="col-sm-4">
     
          
         <img src="<c:url value="/resources/images/phone1.jpg"/>" alt="Pulpit Rock" style="width:300px;height:150px">
             </div>
    <div class="col-sm-4">
           
         <img src="<c:url value="/resources/images/phone2.jpg"/>" alt="Moustiers Sainte Marie" style="width:300px;height:150px">
         
    </div>
    <div class="col-sm-4">
     
           <img src="<c:url value="/resources/images/phone3.jpg"/>" alt="Cinque Terre" style="width:300px;height:150px">
      </a>
    </div><br><br><br><br>
  </div>
  <div class ="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
  <div class ="container">
  <div class="navbar-text pull-left">@DEEPU-All rights reserved</div>
  </div>
  </div>
  </div>
</div>
</body>
</html>