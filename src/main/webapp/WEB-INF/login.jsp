<html>
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
 

 SEARCH HERE FOR BOOKS
 <form class="col s12" action=search2 method=post><br>
 <div class="row">
      
            
            <div class="row">
               <label>select genre</label>
               <select multiple name=genre>
                  <option value="" disabled selected>Select genre</option>
                  <option value="horror">horror</option>
                  <option value="fiction">fiction</option>
                  <option value="mystery">mystery</option>
                </select>              
            </div>
 </div>	

<div class="row">
          <div class="input-field col s6">
          <i class="material-icons prefix">library_books</i>
          <input id="icon_prefix" type="text" class="validate" name="bk_name">
          <label for="icon_prefix">book name</label>
          <button class="btn waves-effect waves-light" type="submit" name="action">Submit
          <i class="material-icons right">send</i>
          </button>
          </div>
  </div>
  </form>

 search for study material
 <br>
 <form action="searchvedio" method="post">
 enter video name to search<input type=text name=src><br>
 <input type=submit>
 
 </form>
 
 </div>



<br>
<div style="display:none"  id=signin  class="g-signin2" type="button" data-onsuccess="onSignIn">



</div>


</body>

</html>