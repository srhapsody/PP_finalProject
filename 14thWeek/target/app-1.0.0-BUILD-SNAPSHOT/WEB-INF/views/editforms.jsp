<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  



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
</style>
<div class="profilepicsec">
<h1 class="pictext">Profile picture getting ready</h1>
</div>
		<h1>게시물 수정</h1>
       <form:form action="../editoks" method="POST" commandName="u">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="seq" /></td>
         </tr> 
         <tr>  
          <td>이름 : </td> 
          <td><form:input path="username"  /></td>
         </tr>  
         <tr>  
          <td>분야 :</td>  
          <td><form:input path="sector" /></td>
         </tr> 
         <tr>  
          <td>소개 :</td>  
          <td><form:input path="content" /></td>
         </tr> 
         <tr>  
          <td>핸드폰번호 :</td>  
          <td><form:input path="phone" /></td>
         </tr>
         <tr>  
          <td><input type="button" value="Cancel" onclick="history.back()"/></td>
          <td><input type="submit" value="수정하기" /></td>  
         </tr>  
        </table>  
       </form:form>  
       
