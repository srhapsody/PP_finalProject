<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  

<style>
* {
  font-family: sans-serif; /* Change your font family */
}

.content-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  background-color: #009879;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 15px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
}


</style>


<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href="./deleteok/"+id;

	}

	
</script>
	

<h1>Student's Board</h1>


<table class="content-table">
<tr>
<thead><th>아이디</th><th>분야</th><th>소개</th><th>번호</th><th>자세히</th></thead>
</tr>

<c:forEach var="sl" items="${slist}">
<tr class="active-row">
<td>${sl.username}</td>
<td>${sl.sector}</td>
<td>${sl.content}</td>
<td>${sl.phone}</td>
<td><a href="studentdetail/${sl.seq}">자세히</a></td>
</tr>
</c:forEach>

</table>

	
    <a href="./adds">새글쓰기</a>
<a href="./choose">뒤로가기</a>

    