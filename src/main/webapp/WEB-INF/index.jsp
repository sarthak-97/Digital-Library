<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>


<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta charset="ISO-8859-1">
<title>index</title>
</head>
<body>
 <div class="navbar-fixed">
	 <nav >
    	<div class="nav-wrapper red accent-4 ">
      	<a href="#" class="brand-logo">DIGITAL LIBRARY</a>
      	<ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">JavaScript</a></li>
      </ul>
    </div>
  </nav>
</div>

<div class="slider">
    <ul class="slides">
      <li>
        <img src="img/1.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>A PERFECT PLACE</h3>
          <h5 class="light grey-text text-lighten-3">Best place to get all the books ,music ant lots more.</h5>
        </div>
      </li>
      <li>
        <img src="img/2.jpg"> <!-- random image -->
        <div class="caption left-align">
         <h3>NEED OF BOOKS!!! </h3>
          <h5 class="light grey-text text-lighten-3">Search out some of latest books</h5>
        </div>
      </li>
      <li>
        <img src="img/3.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>GET SOME MUSIC!!!</h3>
          <h5 class="light grey-text text-lighten-3">Check out the latest music here.</h5>
        </div>
      </li>
      <li>
        <img src="img/4.jpg"> <!-- random image --> 
        <div class="caption center-align">
          <h3>NEED VIDEOS!!!</h3>
          <h5 class="light grey-text text-lighten-3">Check out the all the videos of lectures and songs</h5>
        </div>
      </li>
    </ul>
  </div>
  <script>
  $(document).ready(function(){
      $('.slider').slider();
    });
        
  </script>
  </body>
  </html>