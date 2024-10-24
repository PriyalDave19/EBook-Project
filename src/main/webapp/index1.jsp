<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: Index</title>
<%@include file="component/eCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/book.jpg");
	height: 60vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>

<body>
	<%@include file="component/nav.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">EBook Management System</h2>
	</div>

	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
							<img alt="" src="book/java1.jpeg" style="width: 150px;height: 200px" class="img-thumbnail">
							<p>Java Programming</p>
							<p>Balguruswamy</p>
							<p>Categories:New</p>
							<div class = "row">
							<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">299</a>
							</div>
						</div>
					</div>
				</div>
			</div>
	  </div>
</body>
</html>