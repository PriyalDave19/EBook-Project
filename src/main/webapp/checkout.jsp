<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
<%@include file="component/eCss.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="component/nav.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>

	<c:if test="${not empty succMsg}">
		<div class="alert alert-success" role="alert">${succMsg}</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	
	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">
				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-success">Your Selected Items</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Book Name</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								User u = (User) session.getAttribute("userobj");
								CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
								List<Cart> cart = dao.getBookByUser(u.getId());
								double totalPrice = 0.00;
								for (Cart c : cart) {
									totalPrice += c.getPrice();
								%>
								<tr>
									<th scope="row"><%=c.getBookName()%></th>
									<td><%=c.getAuthor()%></td>
									<td><%=c.getPrice()%></td>
									<td><a
										href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>&&cid=<%=c.getCid()%>"
										class="btn btn-sm btn-danger">Remove</a></td>
								</tr>
								<%
								}
								%>
								<tr>
									<th>Total Price</th>
									<td></td>
									<td></td>
									<td><%=totalPrice%></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Your Details for Order</h3>
						<form action="order" method="post">
							<input type="hidden" value="${userobj.id}" name="id">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="name">Name</label> <input type="text"
										name="username" class="form-control" id="name"
										value="${userobj.name}" required>
								</div>
								<div class="form-group col-md-6">
									<label for="email">Email</label> <input type="email"
										name="email" class="form-control" id="email"
										value="${userobj.email}"required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="phone">Phone Number</label> <input type="number"
										name="phno" class="form-control" id="phone"
										value="${userobj.phno}"required>
								</div>
								<div class="form-group col-md-6">
									<label for="address">Address</label> <input type="text"
										name="address" class="form-control" id="address"required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="landmark">Landmark</label> <input type="text"
										name="landmark" class="form-control" id="landmark"required>
								</div>
								<div class="form-group col-md-6">
									<label for="city">City</label> <input type="text" name="city"
										class="form-control" id="city"required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="state">State</label> <input type="text"
										name="state" class="form-control" id="state"required>
								</div>
								<div class="form-group col-md-6">
									<label for="pin">Pin Code</label> <input type="text"
										name="pincode" class="form-control" id="pin"required>
								</div>
							</div>
							<div class="form-group">
								<label for="paymentMode">Payment Mode</label> <select
									class="form-control" id="paymentMode" name="payment">
									<option value="noselect">--Select--</option>
									<option value="COD">Cash On Delivery</option>
								</select>
							</div>
							<div class="text-center">
								<button class="btn btn-warning" type="submit">Order Now</button>
								<a href="index1.jsp" class="btn btn-success">Continue
									Shopping</a>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
