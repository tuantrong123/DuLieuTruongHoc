<%@ page pageEncoding="UTF-8" contentType="text/html" %>

<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-4">
<a class="text-light text-decoration-none" href="/Subject">Danh Sách Môn Học</a>
</button>
<form method="post" class="g-3" action="/addSubject">
	<div class="bg-light p-4">
		<h4 class = "text-center">Thêm Mới Môn Học</h4>
        
         <div class="mb-2">
	        <label>STT:</label>
			<input class= "form-control" type="number" name="SubjectID" value=""/>
		</div>
		
		 <div class="mb-2">
			<label>Tên Môn Học:</label>
			<input class= "form-control" type="text" name="NameSubject" value="" />
		</div>
		
		<br class="clear_float">
		
		<button type="submit" class="btn btn-success">Thêm</button>
	</div>

	<!--
	<div class="error_msg">
		L?i có th? x?y ra ...
	</div>
	-->
</form>
</div>
<a href="/Subject" type="button" class="btn btn-success mb-2">Trở về</a>