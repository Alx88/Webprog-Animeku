<%@ include file="connect.jsp" %>
<%
	String animeId = request.getParameter("animeId");
	String review = request.getParameter("txtReview");
	
	String query="INSERT INTO review VALUES(null, '"+session.getAttribute("email")+"', "+animeId+", '"+review+"')";
	st.executeUpdate(query);
	response.sendRedirect("../detail.jsp?id="+animeId);
%>