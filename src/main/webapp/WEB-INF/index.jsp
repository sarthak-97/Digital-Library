
<html>
<head>

     
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
    var redirectUrl = 'loginverify';
  var form = $('<form action="' + redirectUrl + '" method="post">' +
                      '<input type="text" name="auth_token" value="' +
                       googleUser.getAuthResponse().id_token + '"  hidden />' +
                                                            '</form>');
$('body').append(form);
form.submit();
 
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
      <a href="#" class="brand-logo">Logo</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><button class="g-signin2" type="button" data-onsuccess="onSignIn" id=demo>
Login<i class="btn waves-effect waves-light"></i></button></li>
        <li><a href="about.jsp">about</a></li>
        <li><a href="contact.jsp">contact</a></li>      </ul>
    </div>
  </nav>
  

<body>

<div  id=signout hidden>
<a href="#" onclick="signOut();">Sign out</a>
</div>
<br>


</body>

</html>
