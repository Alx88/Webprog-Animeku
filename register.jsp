<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="navigation.jsp"%>
	<div class="row content">
		<div class="col-sm-4"></div>
		<div class="col-sm-4 form-style">
			<h2 class="text-center">Register</h2>	
			<form action="controller/doRegister.jsp" method="post">
				<div class="form-group">
					<label for="txtName">Name</label>
					<input type="text" name="txtName" class="form-control" placeholder="Input Your Name">
				</div>
				<div class="form-group">
					<label for="txtEmail">Email</label>
					<input type="email" name="txtEmail" class="form-control" placeholder="Input email">
				</div>
				<div class="form-group">
					<label for="txtPassword">Password</label>
					<input type="password" name="txtPassword" class="form-control" placeholder="Input password">
				</div>
				<div class="form-group">
					<label for="txtConPassword">Confirm Password</label>
					<input type="password" name="txtConPassword" class="form-control" placeholder="Confirm password">
				</div>
				<div class="form-group">
					<label class="radio-inline"><input type="radio" name="gender" value="Male">Male</label> 
                    <label class="radio-inline"><input type="radio" name="gender" value="Female">female</label>
				</div>
                <%@ include file="error.jsp" %>
				<div class="form-group">
					<input type="submit" value="Login" class="login btn-primary form-control">
				</div>
			</form>
		</div>
		<div class="col-sm-4"></div>
	</div>
</body>
</html>