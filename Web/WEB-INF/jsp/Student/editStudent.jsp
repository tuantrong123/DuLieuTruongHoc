<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
	<a class="text-light text-decoration-none" href="/Student">Danh Sách Sinh Viên</a>
</button>

<form method="post" action="/editStudent?StudentID=${Data.StudentID}">
	<div class="bg-light p-4">
		<h4 class = "text-center">Sửa Sinh Viên</h4>
        
        <div class="mb-2"> 
	        <label>STT:</label>
			<input class= "form-control" type="number" name="StudentID" value="${Data.StudentID}" readonly/>
		</div>
		
		<div class="mb-2"> 
			<label>Họ Tên:</label>
			<input class= "form-control" type="text" name="NameStudent" value="${Data.NameStudent}" />
		</div>
		
		<div class="mb-2"> 
			<label>Tên Lớp:</label>
			<select name="ClassId" class= "form-control">
				<c:forEach var="Data" items="${requestScope.DataClass}" >
				<option value="${Data.ClassId}">${Data.NameClass}</option>
				</c:forEach>
			</select>
		</div>
		<br class="clear_float">
		
		<button type="submit" class="btn btn-warning mb-2">Lưu</button>
	</div>

	<!--
	<div class="error_msg">
		Lỗi có thể xảy ra ...
	</div>
	-->
</form>
</div>
<a href="/Student" type="button" class="btn btn-success mb-2">Trở về</a>