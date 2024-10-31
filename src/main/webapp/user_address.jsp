<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Address</title>
<%@include file="component/eCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="component/nav.jsp"%>

	<div class="container">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3 p-2">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success p-3">Address</h3>

						<form action="">


							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="address">Address</label> <input type="text"
										class="form-control" id="address">
								</div>

								<div class="form-group col-md-6">
									<label for="address">Landmark</label> <input type="text"
										class="form-control" id="address">
								</div>

							</div>

							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="city">City</label> <input type="text"
										class="form-control" id="city">
								</div>

								<div class="form-group col-md-4">
									<label for="city">State</label> <input type="text"
										class="form-control" id="city">
								</div>

								<div class="form-group col-md-4">
									<label for="city">Pin</label> <input type="text"
										class="form-control" id="city">
								</div>

							</div>

							<div class="text-center">
								<button class="btn btn-warning text-white">Add Address</button>
							</div>


						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

