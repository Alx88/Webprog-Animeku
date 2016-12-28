<%@ include file="connect.jsp"%>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	ResultSet rs = st.executeQuery("SELECT * FROM msuser WHERE Email = '"+email+"' AND Password='"+password+"'");
	if(rs.next()){
		session.setAttribute("role", rs.getString("role"));
		session.setAttribute("email", rs.getString("Email"));
		response.sendRedirect("../index.jsp?Login Berhasil");

	}else{
		response.sendRedirect("../login.jsp?err=Email or Password does not match");
	}

%>
