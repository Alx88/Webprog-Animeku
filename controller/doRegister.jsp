<%@ include file="connect.jsp" %>
<%
	String name = request.getParameter("txtName");
	String email = request.getParameter("txtEmail");
	String password = request.getParameter("txtPassword");
	String conPassword = request.getParameter("txtConPassword");
	String gender = request.getParameter("gender");
	
	if(name == null || name.equals(""))
		response.sendRedirect("../register.jsp?err=Name must be filled");
	else if(email == null || email.equals(""))
		response.sendRedirect("../register.jsp?err=Email must be filled");
	else if(password == null || password.equals(""))
		response.sendRedirect("../register.jsp?err=Password must be filled");
	else{
		st.executeUpdate("INSERT INTO msuser VALUES ('"+email+"', '"+name+"', '"+password+"', '"+gender+"', 'member')");
		response.sendRedirect("../login.jsp");
	}
%>