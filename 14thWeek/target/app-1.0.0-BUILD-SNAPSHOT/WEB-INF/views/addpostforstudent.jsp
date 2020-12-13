<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  



<h1>새 글쓰기</h1>
		
<form action="./addoks" method="post">
<table>
<tr><td>이름:</td><td><input type="text" name="username"/></td></tr>
<tr><td>나이:</td><td><input type="text" name="age"/></td></tr>
<tr><td>분야:</td><td><input type="text" name="sector"/></td></tr>
<tr><td>핸드폰번호:</td><td><input type="text" name="phone"/></td></tr>
<tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<tr><td><a href="tlist">View All Records</a></td><td align="right"><input type="submit" value="글 추가"/></td></tr>
</table>
</form>

