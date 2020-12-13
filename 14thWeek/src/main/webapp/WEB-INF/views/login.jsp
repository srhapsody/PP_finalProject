   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>
<style>
	
	
	.loginform{
	width:100%;
box-sizing:border-box;
padding:10px 0;
margin-top:30px;
outline:none;
border:none;
background:#60adde;
opacity:0.7;
border-radius:20px;
font-size:20px;
color:#fff;
	}
	
	
	.loginsec{
max-width:450px;
border-radius:0 0 20px 20px;
margin:auto;
background:rgba(0,0,0,0.8);
box-sizing:border-box;
padding:20px;
color:#fff;

}
img{
max-width:450px;
width:450px;
display:block;
margin-left:auto;
margin-right:auto;
}

</style>

<body>


<img src='../img/loginpage.jpg' height="250">
<div class="loginsec">
<form method="post" action="loginOK">
<input class='loginform' type='text' name='userid' placeholder='  user ID'/>
<input class='loginform' type='password' name='password' placeholder='  Password'/>
<button class='loginform' type='submit'>login</button>
</form>

<form method="get" action="signup">
<button id="signupb" class='loginform' type='submit' value='./signup.jsp'>Sign up</button>
</form>

</div>

</body>
</html>

