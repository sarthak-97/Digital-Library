<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin pannel</title>
</head>
<body>
<body>
<!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
       <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Logo</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
       
        <li><a href="about.jsp">about</a></li>
        <li><a href="contact.jsp">contact</a></li>      </ul>
    </div>
  </nav>
  <br>
  <div class="row">
    <form class="col s12" action=adminverify method="post">
      <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="emailid" type="text" class="validate" name="email">
          <label for="email">Email</label>
        </div>
    
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input id="submit" type="submit" class="validate">
          
        </div>
      </div>
      </div>
    </form>
  </div>

</body>
</html>