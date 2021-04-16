<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Welcome To Our SignUp Page</title>
    <link rel="stylesheet" href="style_signup.css">
  </head>
  <link
  rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
  integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
  crossorigin="anonymous"
/>
<link
  href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap"
  rel="stylesheet"
/>
<link
  href="https://fonts.googleapis.com/css?family=Raleway:700&display=swap"
  rel="stylesheet"
/>
  <body>
    <!--nav start-->
    <nav id="navbar" class="nav">
      <ul class="nav-list">
        <li>
          <a href="home.html#Welcome-Section"><lable class="link"><i class="fas fa-home"></i>  Home</lable></a>
        </li>
        <li>
          <a href="home.html#projects"><lable class="link"><i class="fas fa-briefcase"></i>  Work</lable></a>
        </li>
        <li>
          <a href="home.html#contact"><lable class="link"><i class="fas fa-phone-square"></i>  Contact</lable></a>
        </li>
    
      </ul>
    </nav>
    <!--nav end-->
    <div class="wrapper">
      <div class="title">Registration Form</div>
      <form action="RegistrationAction.jsp">
        <div class="field">
          <input type="text" name="name" required>
          <label for="name">Name</label>
        </div>
        <div class="field">
          <input type="email" name="email" required>
          <label for="email">Email Address</label>
        </div>
        <div class="field">
          <input type="text" name="mobile"required>
          <label for="mobile">Phone No.</label>
        </div>
        <div class="field">
          <input type="password" class="pass" name="pass" required>
          <label for="pass">Password</label>
        </div>
        <div class="field">
          <input type="password" class="c_pass" name="c_pass" required>
          <label for="c_pass">Confirm Password</label>
        </div>
        <div class="field">
          <select>
            <option>Gender</option>
            <option>Male</option>
            <option>Female</option>
          </select>
        </div>
        <div class="field">
          <input type="submit" class="button" value="SignUp">
        </div>
      </form>
    </div>
    
    <script type="text/javascript">
    	
    	document.querySelector('.button').onclick = function(){
    		var pass = document.querySelector('.pass').value,
    		c_pass = document.querySelector('.c_pass').value;
    		
    	if(pass != c_pass)
    	{
    		alert("Password Doesn't Match..!!!");
    	}
    	}
    
    </script>

  </body>
</html>