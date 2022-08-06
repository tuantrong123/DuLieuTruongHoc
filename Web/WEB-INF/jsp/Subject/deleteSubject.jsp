<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
<a class="text-light text-decoration-none" href="/Subject">Danh Sách Môn Học</a>
</button>
<!-- http://localhost/delete?id=15 -->
<form method="post" action="/deleteSubject?SubjectID=${Data.SubjectID}">
	<div class="bg-light p-4">
		<h4 class = "text-center">Xóa Môn Học</h4>
        
        <div class="mb-2">
	        <label>STT:</label>
			<input class= "form-control" type="number" name="SubjectID" value="${Data.SubjectID}" disabled/>
		</div>
		
		<div class="mb-2">
			<label>Tên Môn Học:</label>
			<input class= "form-control" type="text" name="NameSubject" value="${Data.NameSubject}" disabled/>
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
<a href="/Subject" type="button" class="btn btn-success mb-2">Trở về</a>