<%@ page pageEncoding="UTF-8" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${sessionScope.SUCCESS_MSG != null}">
	<div style="background: green;">
		${sessionScope.SUCCESS_MSG}
		<%
			session.setAttribute("SUCCESS_MSG", null);
		%>
	</div>
</c:if>
<div class="container">
	<form action="Result" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
		<div class="input-group">
			<input name="search" type="text" class="form-control bg-light border-dark-0 small" placeholder="Tìm kiếm..." aria-label="Search"
				aria-describedby="basic-addon2">
			<div class="input-group-append">
				<button class="btn btn-primary" type="button">
					<i class="fas fa-search fa-sm"></i>
				</button>
			</div>
		</div>
	</form>
	<br>
	<br> <a href="/addResult" type="button" class="btn btn-success mt-2">Thêm Mới Kết Quả Thi</a>
	<table class="table table-striped table-hover ">
		<h4 class="text-center">Danh Sách Kết Quả Thi</h4>
		<tr>
			<th>STT</th>
			<th>Họ Tên</th>
			<th>Môn Học</th> 
			<th>Điểm <a href="result?column=Point&sort=ASC"><i
					class="fa-solid fa-arrow-up"></i></a> <a
				href="result?column=Point&sort=DESC"><i
					class="fa-solid fa-arrow-down"></i></a>
			</th>
			<th>Action</th>
		</tr>


		<c:forEach var="Data" items="${requestScope.DataTable}">
			<tr>
				<td>${Data.ResultID}</td>
				<td>${Data.StudentID}</td>
				<td>${Data.SubjectID}</td>
				<td>${Data.Point}</td>
				<td>
					<a type="button" class="btn btn-warning" href="/editResult?ResultID=${Data.ResultID}">Sửa</a> 
					<a type="button" class="btn btn-danger" href="/deleteResult?ResultID=${Data.ResultID}">Xóa</a> 
					<a type="button" class="btn btn-info" href="/detailsResult?ResultID=${Data.ResultID}">Chi Tiết</a>
				</td>
			</tr>
		</c:forEach>
		<!-- ?óng vòng l?p for -->
	</table>
	<ul class="pagination justify-content-center">
		<c:forEach var="DataTotal" items="${requestScope.DataTotal}">
			<c:set var="PageHere" value="${DataTotal.PageHere}" />
			<c:choose>
				<c:when test="${PageHere == 1}">
					<li class="page-item disabled"><a class="page-link" href="#">Trang Trước</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="result?Page=${DataTotal.PrePage}">Trang Trước</a></li>
				</c:otherwise>
			</c:choose>
			<c:forEach var="Total" begin="1" end="${DataTotal.Page+1}">
				<c:set var="PageHere" value="${DataTotal.PageHere}" />
				<c:set var="Page" value="${Total}" />
				<c:choose>
					<c:when test="${PageHere == Page}">
						<li class="page-item active" aria-current="page"><span
							class="page-link">${Total}</span></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="result?Page=${Total}">${Total}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:set var="PageHere" value="${DataTotal.PageHere}" />
			<c:set var="Page" value="${DataTotal.Page}" />
			<c:choose>
				<c:when test="${PageHere == Page+1}">
					<li class="page-item disabled"><a class="page-link" href="#">Trang Sau</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="result?Page=${DataTotal.NextPage}">Trang Sau</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>

	<a type="button" class="btn btn-success" href="/">Trở về</a>
</div>
