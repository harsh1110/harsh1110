<%@ page import="java.sql.*"%>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String pass = request.getParameter("pass");
	String c_pass = request.getParameter("c_pass");
	
	
	
	String URL = "jdbc:mysql://localhost:3306/myweb";
	String query = "insert into registration (name, email, mobile, pass, c_pass) values('"+name+"', '"+email+"', '"+mobile+"', '"+pass+"', '"+c_pass+"') ";
	
	
	
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(URL , "root", "harsh123");
		Statement st = con.createStatement();
		st.executeUpdate(query);
		response.sendRedirect("Login.jsp");
	}
	catch(Exception e){
		response.sendRedirect("Signup_err.jsp");
		
	}
%>