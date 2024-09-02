<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <%
        try
        {
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String pass=request.getParameter("pass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
   // Statement st = con.createStatement();
    //ResultSet rs;
   PreparedStatement ps=con.prepareStatement("insert into members(first_name,last_name,email,uname,pass) values (?,?,?,?,?)");
    ps.setString(1, fname);
    ps.setString(2, lname);
    ps.setString(3, email);
    ps.setString(4, user);
    ps.setString(5, pass);
    int n = ps.executeUpdate();
    if(n>0)
    {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
        }catch(Exception e)
        {
        	System.out.println(e);
        }
%>
</body>
</html>