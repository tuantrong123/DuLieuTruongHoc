<%@ page pageEncoding="UTF-8" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
	<a class="text-light text-decoration-none" href="/Result">Danh Sách Kết Quả Thi</a>
</button>
	<form method="post" class="g-3" action="/addResult">
		<div class="bg-light p-4">
		<h4 class = "text-center">Thêm Mới Kết Quả Thi</h4>
		
			<div class="mb-2"> 
				<label>STT</label> 
				<input class= "form-control" type="number" name="ResultID" value="" />
			</div>
				
			<div class="mb-2">
				<label>Mã Học Sinh:</label> 
				<input class= "form-control" type="number" name="StudentID" value="" />
			</div>
			
			<div class="mb-2">
				<label>Môn Học:</label> 
				<select class= "form-control" name="SubjectID">
					<c:forEach var="Data" items="${requestScope.DataSubject}">
						<option value="${Data.SubjectID}">${Data.NameSubject}</option>
					</c:forEach>
				</select>
			</div>
				
			<div class="mb-2">
				<label>Điểm:</label>
				<input class= "form-control" type="text" name="Point" value="" /> <br
					class="clear_float">
			</div>
			<button type="submit" class="btn btn-success mb-2">Thêm</button>
		</div>
	<!--
	<div class="error_msg">
		Lỗi có thể xảy ra ...
	</div>
	-->
	</form>
	</div>
	<a href="/Result" type="button" class="btn btn-success mb-2">Trở về</a>
