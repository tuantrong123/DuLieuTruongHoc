<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container shadow col-md-8 col-12">
<button  type="button" class="btn btn-success mt-2">
<a class="text-light text-decoration-none" href="/Class">Danh Sách Lớp Học</a>
</button>

<form method="post" action="/detailsClass?ClassId=${Data.ClassId}">
	<div class="bg-light p-4">
		<h4 class = "text-center">Chi tiết Lớp Học</h4>
        
        <div class="mb-2">
	        <label>STT:</label>
			<input class= "form-control" type="number" name="ClassId" value="${Data.ClassId}" disabled/>
		</div>
		
		<div class="mb-2">
			<label>Tên Lớp:</label>
			<input class= "form-control" type="text" name="NameClass" value="${Data.NameClass}" disabled/>
		</div>
	</div>
	<!--
	<div class="error_msg">
		Lỗi có thể xảy ra ...
	</div>
	-->
</form>
</div>
<a href="/Class" type="button" class="btn btn-success mb-2">Trở về</a>