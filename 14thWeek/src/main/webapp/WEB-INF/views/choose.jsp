<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  


<!DOCTYPE html>
<html>

<style>
*{
	margin:0;
	padding:0;
	font-family: 'Poppins', sans-serif;
}

body{
	display:flex;
	justify-content: center;
	align-items: center;
	min-height : 100vh;
	flex-direction : column;
	background: #040d15;
}

.space{
height:150px;}

a{
	
	position:relative;
	display:inline-block;
	padding:12px 36px;
	margin: 10px 0;
	color:#fff;
	text-decoration:none;
	text-transformation: uppercase;
	font-size:18px;
	letter-spacing:2px;
	border-radius:40px;
	overflow:hidden;
	background:linear-gradient(90deg,#0162c8,#55e7fc);
}

a:nth-child(2){

	background:linear-gradient(90deg,#755bea,#ff72c0);
}

span{
position:absolute;
background:#fff;
transform:translate(-50%,-50%);
pointer-events:none;
border-radius:50%;
animation:animate 1s linear infinite;
}
@keyframes animate{
	0%{width:0px; height:0px; opacity:0.5;}
	100%{width:500px; height:500px;opacity:0;}
}

</style>
<script type="text/javascript">
const buttons = document.querySelectorAll('a');
buttons.forEach(btn=>{
	btn.addEventListener('click',function(e){

		let x = e.clientX - e.target.offsetLeft;
		let y = e.clientY - e.target.offsetTop;

		let ripples = document.createElement('span');
		ripples.style.left=x+'px';
		ripples.style.top=y+'px';
		this.appendChild(ripples);

		setTimeOut(()=>{ripples.remove()
			},1000);
		})
})
</script>


<body>
<div class="space"></div>
<a href="./list">I'm a Student</a>
<a href="./tlist">I'm a Teacher</a>

<a href="./login/login">뒤로가기</a>


</body>


</html>




