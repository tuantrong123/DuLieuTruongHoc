<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
<a class="text-light text-decoration-none" href="/Class">Danh Sách Lớp Học</a></button>
<div class="justify-ontent-center">
<form method="post"  class="g-3" action="/addClass">
	<div class="bg-light p-5">
		<h4 class = "text-center">Thêm Mới Lớp Học</h4>
		
        <div class="mb-2">     
        <label>STT:</label>
		<input class= "form-control" type="number" name="ClassId" value=""/>
		</div> 
		
		<div class="mb-2">
		<label>Tên Lớp:</label>
		<input  class= "form-control" type="text" name="NameClass" value="" />
		</div>
		<br class="clear_float">
		<button type="submit" class="btn btn-success">Thêm</button>
	</div>
</form>
</div>
</div>
<a href="/class" type="button" class="btn btn-success">Trở về</a>
