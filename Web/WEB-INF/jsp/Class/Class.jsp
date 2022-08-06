<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        
        <c:if test="${sessionScope.SUCCESS_MSG != null}">
            <div style="background: green;">
		${sessionScope.SUCCESS_MSG}
		<% session.setAttribute("SUCCESS_MSG", null); %>
            </div>
        </c:if>

    <div class = "container">
    <form action="Class" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
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
	<br>
    <a type="button" class="btn btn-success mt-2" href="/addClass">Thêm Mới Lớp Học</a>
    <table class="table table-striped">
		<h4 class ="text-center">Danh Sách Lớp Học</h4>
		<tr>
			<th>STT</th>
			<th>Tên Lớp</th>
			<th>Actions</th>
		</tr>
			
		<c:forEach var="Data" items="${requestScope.DataTable}" >
		<tr>
			<td>${Data.ClassId}</td>
			<td>${Data.NameClass}</td>
			<td>
				 <a type="button" class="btn btn-warning" href="/editClass?ClassId=${Data.ClassId}">Sửa</a>
				 <a type="button" class="btn btn-danger" href="deleteClass?ClassId=${Data.ClassId}">Xóa</a>
				 <a type="button" class="btn btn-info" href="detailsClass?ClassId=${Data.ClassId}">Chi Tiết</a>
			</td>
		</tr>
		</c:forEach> <!-- ?óng vòng l?p for -->
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
						href="class?Page=${DataTotal.PrePage}">Trang Trước</a></li>
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
							href="class?Page=${Total}">${Total}</a></li>
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
						href="class?Page=${DataTotal.NextPage}">Trang Sau</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
	
	<a type="button" class="btn btn-success" href="/index.html">Trở về</a>
</div>
