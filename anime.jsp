<!DOCTYPE html>
<html>
<head>
	<title>AnimeKu - Anime</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="navigation.jsp" %>
	<%@ include file="controller/connect.jsp" %>
	<div class="container">
		<table width="800px" align="center">
			<tr>
				<th>No.</th>
				<th>Image</th>
				<th>Title</th>
				<th>Rating</th>
				<th>Aired</th>
				<th>Status</th>
			</tr>
			<%
				String query = "SELECT * FROM msanime";
				ResultSet rs = st.executeQuery(query);
				while(rs.next()){
			%>
			<tr>
				<td><%= rs.getString("Id") %></td>
				<td><img src='images/<%= rs.getString("Image") %>' width="90" height="120"></td>
				<td><a href='detail.jsp?id=<%= rs.getString("Id") %>'><%= rs.getString("Title") %></a></td>
				<td><%= rs.getString("Rating") %></td>
				<td><%= rs.getString("Aired") %></td>
				<td><%= rs.getString("Status") %></td>
			</tr>
			<% } %>
		</table>
		<% if(session.getAttribute("role")!= null && session.getAttribute("role").equals("admin")){ %>
		<div class="text-center">
			<a href="insert_anime.jsp"><button class="btn-primary btn">Insert New Anime</button></a>
		</div>
		<% } %>
	</div>
</body>
</html>