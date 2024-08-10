<%@page import="com.entity.Student"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student</title>
<%@ include file="allCss.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navBar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card"></div>
				<div class="card-body">
					<p class="fs-3 text-center">Edit Student</p>
					
					<% 
					int id = Integer.parseInt(request.getParameter("id"));
					StudentDAO dao = new StudentDAO(DBConnect.getConn());
					Student s=dao.getStudentById(id);
					%>
					
					<form action="update" method="post">
						<div class="mb-3">
							<label class="form-label">Full Name</label> <input
								type="text" value="<%= s.getFullName() %>" class="form-control" name="name">
						</div>
						<div class="mb-3">
							<label class="form-label">Date Of Birth</label> <input
								type="date" value="<%=s.getDob() %>"  class="form-control" name="dob">
						</div>
						<div class="mb-3">
							<label class="form-label">Address</label> <input
								type="text" value="<%=s.getAddress() %>" class="form-control" name="address">
						</div>
						<div class="mb-3">
							<label class="form-label">Qualification</label> <input
								type="text" value="<%=s.getQualification() %>" class="form-control" name="qualification">
						</div>
						<div class="mb-3">
							<label class="form-label">Email </label> <input
								type="email" value="<%=s.getEmail() %>" class="form-control" name="email">
						</div>
						<input type="hidden" name="id" value="<%=s.getId()%>">
						<button type="submit" class="btn btn-primary col-md-12">Update</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</html>