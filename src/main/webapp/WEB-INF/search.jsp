<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
<head>
<!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     
<meta name="google-signin-client_id" content="30081514308-nsdkis6qpuda4f9vr2mb2d3aeg0otqgq.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
       <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
       <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     
<script>
function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId());
  // Do not send to your backend! Use an ID token instead.
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail());
  
  
 
}
</script>
<script>
  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
      window.location="index.jsp";
    });
  }
</script>
  
</head>
<body>
<!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    
<nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Dashboard</a>
	      <ul id="nav-mobile" class="right hide-on-med-and-down">
      
        		<li><a href="about.jsp">about</a></li>
        		<li><a href="contact.jsp">contact</a></li>
        		<li ><img src="${avatar}" width="40" height="40"  class="circle responsive-img" valign="middle" onclick="signOut()"  ></li>
      		    <li> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>
          </ul>
    </div>
</nav>

 <br>

<div id="buttons">
    		<label> <input id="query"  type="text" value="${src}" hidden /> 
    		<div id="container">
    			  <h1>Search Results</h1>
      			  <ul id="results"></ul>
    		</div>           
            </label>
</div>
</body>

<script>
    window.onload= function keyWordsearch(){
        gapi.client.setApiKey('AIzaSyBW_hwG9wDN3jB3jutSTQEm-EAsiZYJ2gw');
        gapi.client.load('youtube', 'v3', function() {
                makeRequest();
        });
}
    function makeRequest() {
        var q = $('#query').val();
        var request = gapi.client.youtube.search.list({
                q: q,
                part: 'snippet', 
                maxResults: 10
        });
        request.execute(function(response)  {                                                                                    
                $('#results').empty()
                var srchItems = response.result.items;                      
                $.each(srchItems, function(index, item) {
                vidTitle = item.snippet.title;  
      
                vid=item.id;
                vid2=vid.videoId;
               
                   console.log(vid2); 
                 
                   
                vidThumbimg = '<pre><iframe width="420" height="345" src="https://www.youtube.com/embed/'+vid2+'" allowfullscreen></iframe></pre>'; 
                $('#results').append('<pre>' + vidTitle  + vidThumbimg +  '</pre>');                      
        })  
    })  
}
  </script> 
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
  <script src="https://apis.google.com/js/client.js?onload=googleApiClientReady">  </script>
</html>
