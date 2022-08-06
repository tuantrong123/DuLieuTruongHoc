<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
<a class="text-light text-decoration-none" href="/Student">Danh Sách Sinh Viên</a>
</button>

<form method="post" class="g-3" action="/deleteStudent?StudentID=${Data.StudentID}">
	<div class="bg-light p-4">
		<h4 class = "text-center">Xóa Sinh Viên</h4>
        
        <div class="mb-2">
	        <label>STT:</label>
			<input class= "form-control" type="number" name="StudentID" value="${Data.StudentID}" disabled/>
		</div>
		
		<div class="mb-2">
			<label>Họ Tên:</label>
			<input class= "form-control" type="text" name="NameStudent" value="${Data.NameStudent}" disabled/>
		</div>
		
		<div class="mb-2">
			<label>Mã Lớp:</label>
			<input class= "form-control" type="text" name="ClassId" value="${Data.ClassId}" disabled/>
		</div>

		<br class="clear_float">
		
		<button type="submit" class="btn btn-danger mb-2">Xóa</button>
	</div>

	<!--
	<div class="error_msg">
		Lỗi có thể xảy ra ...
	</div>
	-->
</form>
</div>
<a href="/Student" type="button" class="btn btn-success mb-2">Trở về</a>