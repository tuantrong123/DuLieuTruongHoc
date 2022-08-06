<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
<a class="text-light text-decoration-none" href="/Student">Danh Sách Sinh Viên</a>
</button>

<form method="post" class="g-3" action="/addStudent">
	<div class="bg-light p-4">
		<h4 class = "text-center">Thêm Mới Sinh Viên</h4>
        
        <div class="mb-2">
	        <label>STT</label>
			<input class= "form-control" type="number" name="StudentID" value=""/>
		</div>
		
		<div class="mb-2">
			<label>Họ Tên:</label>
			<input class= "form-control" type="text" name="NameStudent" value="" />
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
		<button type="submit" class="btn btn-success ml-2 mb-2">Thêm</button>
	</div>

	<!--
	<div class="error_msg">
		L?i có th? x?y ra ...
	</div>
	-->
</form>
</div>
<a href="/Student" type="button" class="btn btn-success mb-2">Trở về</a>