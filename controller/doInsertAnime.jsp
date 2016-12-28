<%@ include file="connect.jsp" %>
<%
	String title = request.getParameter("txtTitle");
	String rating = request.getParameter("txtRating");
	String genre = request.getParameter("txtGenre");
	String episode = request.getParameter("txtEpisode");
	String day = request.getParameter("txtDay");
	String month = request.getParameter("txtMonth");
	String year = request.getParameter("txtYear");
	String season = request.getParameter("txtSeason");
	String duration = request.getParameter("txtDuration");
	String studio = request.getParameter("txtStudio");
	String status = request.getParameter("status");
	String description = request.getParameter("txtDescription");
	String date = "";
	if(day == null || month == null || year == null){
		date = null;
	}else{
		date = year+"/"+month+"/"+day;
	}
	
	String query="INSERT INTO msanime VALUES(null, '"+title+"', '"+description+"', '"+genre+"', "+rating+", "+episode+", '"+date+"', '"+season+"', '"+studio+"', "+duration+", '"+status+"', null)";
	st.executeUpdate(query);
	response.sendRedirect("../anime.jsp");
%>