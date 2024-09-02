<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctors</title>
<link href="CSS/header.css" type="text/css" rel="stylesheet">
</head>
<body>
    <%@include file="Header.html" %>
    <%
    String driver = this.getServletContext().getInitParameter("Driver");
    String Oracle=this.getServletContext().getInitParameter("Oracle");
    String Id = this.getServletContext().getInitParameter("ID");
    String pas=this.getServletContext().getInitParameter("Password");
    String area=request.getParameter("location");
    String spec=request.getParameter("doctors");
    Connection con;
    try
    {
        Class.forName(driver);
        con=DriverManager.getConnection(Oracle+"",Id,pas);
         String sql = "select * from Doctors where Area='"+area+"' and Specialitles ='"+spec+"'";
         Statement st = con.createStatement();
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         {
        	 %>
        	<center> <div id="searchResult">
        	   <h2 ><%=rs.getString("FName") %>&nbsp;&nbsp;<%=rs.getString("LName") %></h2>
        	   <h3 ><%=rs.getString("Area") %></h3>
        	   <input type="submit" value="Book Appoinment" id="book"/>
        	 </div></center>
        	 <%
         }
    }
    catch(Exception e)
    {
    	
    }
    %>
</body>
</html>