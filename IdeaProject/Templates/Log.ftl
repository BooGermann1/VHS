<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <style type="text/css">
    	
		.sidenav {
		    height: calc(100% - 245px);
		    width: 0;
		    position: fixed;
		    z-index: 1;
		    top: 64;
		    right: 0;
		    bottom: -64;
		    background-color: #111;
		    overflow-x: hidden;
		    transition: 0.5s;
		    padding-top: 60px;
		}

		.form-field {
			padding-left: 20px;
			padding-right: 20px;
			text-align: center;
		}

		.footer-bottom {
			position: absolute;
			bottom: 0px;
			width: 100%;
			transition: 0.5s;
		}

		.upnav {
			transition: 0.5s;
		}
    
    </style>
    <body>

		<!--Import jQuery before materialize.js-->
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/materialize.min.js"></script>
		<script type="text/javascript">
			const SIDENAV_WIDTH = "350px";

			function logIn() {
				if (document.getElementById("logSidenav").style.width == SIDENAV_WIDTH){
					document.getElementById("logSidenav").style.width = "0px";
				}else{
					document.getElementById("regSidenav").style.width = "0px";
					document.getElementById("logSidenav").style.width = SIDENAV_WIDTH;
				}
			}

			function register() {
				if (document.getElementById("regSidenav").style.width == SIDENAV_WIDTH){
					document.getElementById("regSidenav").style.width = "0px";
				}else{
					document.getElementById("logSidenav").style.width = "0px";
					document.getElementById("regSidenav").style.width = SIDENAV_WIDTH;
				}
			}
		</script>


		<nav>
		<div id="upNav" class="nav-wrapper cyan upnav">
		  <a href="#" class="brand-logo center">
		  	<i class="material-icons left">chat</i>Office messenger
		  </a>
		  <ul id="nav-mobile" class="right hide-on-med-and-down">
		    <li><a onclick="logIn()" href="#">Log in</a></li>
		    <li><a onclick="register()" href="#">Register</a></li>
		  </ul>
		</div>
		</nav>

		<div id="regSidenav" class="sidenav cyan">
			<div id="logForm" class="form-field">
				<h5 id="loginText" class="white-text">Register</h5>
				<br>
				<form class="white-text" ">
					<input type="text" name="login" placeholder="login" >
					<input type="text" name="password" placeholder="password">
					<input type="text" name="conf_password" placeholder="confirm password">
					<input type="text" name="email" placeholder="email">
					<input type="text" name="first name" placeholder="first name">
					<input type="text" name="last name" placeholder="last name">
					<br>
					<a class="waves-effect waves-light btn cyan darken-3">submit</a>
				</form>
			</div>
		</div>

		<div id="logSidenav" class="sidenav cyan">
			<div id="logForm" class="form-field">
				<h5 id="loginText" class="white-text">Logging in</h5>
				<br>
				<form class="white-text">
					<input type="text" name="login" placeholder="login">
					<input type="text" name="password" placeholder="password">
					<br>
					<a class="waves-effect waves-light btn cyan darken-3">submit</a>
				</form>
			</div>
		</div>

		<footer id="footer" class="page-footer footer-bottom cyan">
		  <div class="container">
		    <div class="row">
		      <div class="col l6 s12">
		        <h5 class="white-text">Footer Content</h5>
		        <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
		      </div>
		      <div class="col l4 offset-l2 s12">
		        <h5 class="white-text">Links</h5>
		        <ul>
		          <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
		        </ul>
		      </div>
		    </div>
		  </div>
		  <div class="footer-copyright">
		    <div class="container">
		    © 2014 Copyright Text
		    <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
		    </div>
		  </div>
		</footer>

    </body>
  </html>