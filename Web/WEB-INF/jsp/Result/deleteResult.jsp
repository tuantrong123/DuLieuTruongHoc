<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
	<a class="text-light text-decoration-none" href="/Result">Danh Sách Kết Quả Thi</a>
</button>
<form method="post" action="/deleteResult?ResultID=${Data.ResultID}">
	<div class="bg-light p-4">
		<h4 class = "text-center">Xóa Kết Quả Thi</h4>
        
        <div class="mb-2"> 
	        <label>STT:</label>
			<input class= "form-control" type="number" name="ResultID" value="${Data.ResultID}" disabled/>
		</div>
		
		<div class="mb-2">
			<label>Họ Tên:</label>
			<input class= "form-control" type="text" name="StudentID" value="${Data.StudentID}" disabled/>
		</div> 
		
		<div class="mb-2"> 
			<label>Môn Học:</label>
			<input class= "form-control" type="text" name="SubjectID" value="${Data.SubjectID}" disabled/>
		</div>
		
		<div class="mb-2"> 
			<label>Điểm:</label>
			<input class= "form-control" type="text" name="Point" value="${Data.Point}" disabled/>
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
<a href="/Result" type="button" class="btn btn-success mb-2">Trở về</a>
