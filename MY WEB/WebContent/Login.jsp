<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Welcome To Our Login Page</title>
<link rel="stylesheet" href="style_login.css">
</head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous" />
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Raleway:700&display=swap"
	rel="stylesheet" />
<body>
	<!--nav start-->
	<nav id="navbar" class="nav">
		<ul class="nav-list">
			<li><a href="home.html#Welcome-Section"><lable class="link">
					<i class="fas fa-home"></i> Home</lable></a></li>
			<li><a href="home.html#projects"><lable class="link">
					<i class="fas fa-briefcase"></i> Work</lable></a></li>
			<li><a href="home.html#contact"><lable class="link">
					<i class="fas fa-phone-square"></i> Contact</lable></a></li>

		</ul>
	</nav>
	<!--nav end-->
	<div class="wrapper">
		<div class="title">
			<i class="fas fa-user-circle"></i>&nbsp;&nbsp;&nbsp;Login
		</div>
		<form action="<%=request.getContextPath()%>/login" method="post">
			<div class="field">
				<input type="text" name="email" required> <label>Email Address</label>
			</div>
			<div class="field">
				<input type="password" name="pass" required> <label>Password</label>
			</div>
			<div class="content">
				<div class="checkbox">
					<input type="checkbox" id="remember-me"> <label
						for="remember-me">Remember me</label>
				</div>
				<div class="pass-link">
					<a href="#">Forgot password?</a>
				</div>
			</div>
			<div class="field">
				<input type="submit" value="Login">
			</div>
			<div class="signup-link">
				Not a member? <a href="Signup.jsp">Signup now</a>
			</div>
		</form>
	</div>

</body>
</html>