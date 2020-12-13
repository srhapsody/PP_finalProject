<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  

<!DOCTYPE html>
<html>
<head>
<title>
</title>
</head>


<style>
body{
  
  
  height: 100vh;
  font-family: 'Fira Sans', sans-serif;
  background: linear-gradient(147deg,#f6b323 0%, #f23b26 74%);
}

.profilepicsec{
	margin:auto;
	width:250px;
	height:250px;
	display:flex;
	justify-content:center;
	align-items:center;
	border-radius : 100%;
	background : white;
}
.pictext{
flex:0 0 120px;
}


input{
	margin-top:20px;
    background: #39b7dd;
    text-align: center;
    padding: 15px;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    text-transform: uppercase;
}
a#del{
position:relative;
    background: #39b7dd;
    text-align: center;
    top:15px;
    border:solid white 1px;
    padding: 15px;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    text-transform: uppercase;
}
a#back{
	position:absolute;
    background: #39b7dd;
    text-align: center;
    
    border:solid white 1px;
    padding: 15px;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    text-transform: uppercase;
}

</style>

<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href="../deleteoks/"+id;

	}

	
</script>

<body>


<div class="profilepicsec">
<h1 class="pictext">Profile picture getting ready</h1>
</div>

<div class="title">
username ${s.username}
</div>

<div class="content">
sector ${s.sector}
</div>
<div>
age : ${s.age}
</div>
<div class="text">
content	${s.content}
</div>

<div class="content">
phone number ${s.phone}
</div>

<form action="../editforms/${s.seq}" method="get">
<input type="submit" value="edit">
</form>

<a id="del" href="javascript:delete_ok('${s.seq}')">삭제</a>
<a id="back" href="../tlist">뒤로가기</a>
</body>

</html>