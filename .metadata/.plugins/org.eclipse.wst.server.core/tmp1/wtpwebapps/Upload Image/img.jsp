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
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con =  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("Select * from KidsDress");
    while(rs.next()) 
    {
%>
        <img src="http://localhost:8080/Upload_Image/show.jsp" style="width:100px; height:100px;" />
       
  <%
    }
    rs.close();
    stmt.close();
    con.close();
} 
catch (Exception e) 
{
    out.println(e);
    return;
} 
%>

    <img src="http://localhost:8080/Upload_Image/show.jsp" style="width:100px; height:100px;"/>
</body>
</html>