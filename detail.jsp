<%@ include file="controller/connect.jsp" %>
<%
	String id = request.getParameter("id");
	String query = "SELECT * FROM msanime WHERE Id="+id;
	ResultSet rs = st.executeQuery(query);
	if(rs.next()){
%>
<!DOCTYPE html>
<html>
<head>
	<title>AnimeKu - <%= rs.getString("Title") %></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="css/modern-business.css" rel="stylesheet">
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="navigation.jsp" %>

	<div class="container">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Home</a></li>
	        <li><a href="anime.jsp">Anime</a>
	        </li>
	        <li class="active"><%= rs.getString("Title") %></li>
	    </ol>
		<div class="row">
			<div class="col-sm-3">
				<img src='images/<%= rs.getString("Image") %>' width="100%">
			</div>
			<div class="col-sm-9">
				<h2><%= rs.getString("Title") %></h2>
				<h4>Synopsis</h4>
				<p><%= rs.getString("Description") %></p>
				<br>
				<table  cellpadding="10">
					<tr>
						<td width="90">Episode</td>
						<td><%= rs.getString("Episode") %></td>
					</tr>
					<tr>
						<td>Status</td>
						<td><%= rs.getString("Status") %></td>
					</tr>
					<tr>
						<td>Aired</td>
						<td><%= rs.getString("Aired") %></td>
					</tr>
					<tr>
						<td>Studio</td>
						<td><%= rs.getString("Studio") %></td>
					</tr>
					<tr>
						<td>Genre</td>
						<td><%= rs.getString("Genre") %></td>
					</tr>
					<tr>
						<td>Duration</td>
						<td><%= rs.getString("Duration") %> min.</td>
					</tr>
					<tr>
						<td>Rating</td>
						<td><%= rs.getString("Rating") %></td>
					</tr>
				</table>
				<br>
				<h4>Lagu Pembuka</h4>
				<audio controls>
				  <source src="music/nano_-_DREAMCATCHER_[Anime_ver.].mp3" type="audio/mpeg">
				</audio>
			</div>
		</div>
	</div>
	<div class="container">
		<% if(session.getAttribute("email") != null){ %>
		<form action="controller/doInsertReview.jsp" method="post">
			<input type="hidden" name="animeId" value='<%= rs.getString("Id") %>' />
			<div class="form-group">
			<label for="txtReview"><h4>New Review</h4></label>
			<textarea name="txtReview" class="form-control"></textarea>
			</div>
			<div class="form-group">
				<input type="submit" value="Submit" class="btn btn-success" />
			</div>
		</form>
		<% } %>
		<table border="1" width="80%" align="center">
			<tr>
				<th width="25%">Name</th>
				<th>Review</th>
			</tr>
		<%
			String query2 = "SELECT * FROM review r JOIN msuser u on r.Email = u.Email WHERE AnimeId = "+rs.getString("Id");
			ResultSet rs2 = st.executeQuery(query2);
			while(rs2.next()){
		%>
			
				<tr>
					<td><%= rs2.getString("Name") %></td>
					<td><%= rs2.getString("Description") %></td>
				</tr>
			
		<% } %>
		</table>
	</div>
</body>
</html>
<% } %>