   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>

<style>
body{
background:url('../img/loginpage.jpg');
backgorund-size:cover;
}

.centerbox{
max-width:350px;
border-radius:20px;
margin:auto;
background:rgba(0,0,0,0.8);
box-sizing:border-box;
padding:40px;
color:#fff;
margin-top:100px;
}

h2{
text-align:center;
}

input[type=text], input[type=password]{
width:100%;
box-sizing:border-box;
padding:12px 5px;
background:rgba(0,0,0,0.10);
outline:none;
border:none;
border-bottom: 1px dotted #fff;
color: #fff;
border-radius: 5px;
margin :5px;
font-weight: bold;
}

input[type=submit]{
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
input[type=submit]:hover{
background:#003366;
opacity:0.7;
}

</style>

<script>
function validateForm(){

	pass1=document.getElementById('password').value;
	pass2=document.getElementById('passwordConfirm').value;
	if (pass1 != pass2) {
        alert("Password not matching");
        return false;
    }
}
</script>

<body>

<div class="centerbox">


<h2>Sign up Here</h2>
<form onsubmit="return validateform()" action="signupOk" method="post">
<input type="text" placeholder ="User Name.." name="username" required>
<input type="text" placeholder ="User ID.." name="userid" required>
<input id="password" type="password" placeholder ="Password.." name="password" required>
<input id="passwordConfirm" type="password" placeholder ="Password Confirm.." required>

<input type="submit" value="Signup">
</form>



</div>
</body>
</html>
