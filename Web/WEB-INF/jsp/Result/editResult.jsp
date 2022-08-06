<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container shadow col-md-8 col-12">
<button type="button" class="btn btn-success mt-2">
	<a class="text-light text-decoration-none" href="/Result">Danh Sách Kết Quả Thi</a>
</button>
<form method="post"  action="/editResult?ResultID=${Data.ResultID}">
	<div class="bg-light p-4">
		<h4 class = "text-center">Sửa Kết Quả Thi</h4>
        
        <div class="mb-2"> 
	        <label>STT:</label>
			<input class= "form-control" type="number" name="ResultID" value="${Data.ResultID}" readonly/>
		</div>
		
		<div class="mb-2"> 
			<label>Họ Tên:</label>
			<input class= "form-control" type="number" name="StudentID" value="${Data.StudentID}" />
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
			<input class= "form-control" type="text" name="Point" value="${Data.Point}" />
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
<a href="/Result" type="button" class="btn btn-success mb-2">Trở về</a>