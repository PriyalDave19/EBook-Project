<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<%@include file="component/eCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="component/nav.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 p-2">
				<div class="card">
					<div class="card-body">
						
						<h4 class="text-center text-primary  ">Edit Profile</h4>
						<form action="${pageContext.request.contextPath}/register"
							method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="fname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone No.</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="phno">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">
							</div>
	
							<div class="text-center ">
							<button type="submit" class="btn btn-primary btn-block btn-m">Update</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>