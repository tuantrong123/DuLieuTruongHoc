<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
<a class="text-light text-decoration-none" href="/Class">Danh Sách Lớp Học</a>
</button>
<!-- http://localhost/edit?id=15 -->
<form method="post" action="/editClass?ClassId=${Data.ClassId}">
	<div class="bg-light p-4">
		<h4 class = "text-center">Sửa Lớp Học</h4>
        
         <div class="mb-2">
	        <label>STT:</label>
			<input class= "form-control" type="number" name="ClassId" value="${Data.ClassId}" readonly/>
		</div>
		
		 <div class="mb-2">
			<label>Tên Lớp:</label>
			<input class= "form-control" type="text" name="NameClass" value="${Data.NameClass}" />
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
<a href="/Class" type="button" class="btn btn-success mb-2">Trở về</a>