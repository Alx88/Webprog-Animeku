<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
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
			<h2 class="text-center">Login</h2>
			<form action="controller/doLogin.jsp" method="post">
				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" name="email" class="form-control" placeholder="Input email">
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" name="password" class="form-control" placeholder="Input password">
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