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
             response.setContentType("image/jpeg");
             byte[] rawBytes = null;
            ServletOutputStream o = response.getOutputStream();
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("Select * from KidsDress ");
        while(rs.next())
        {
            rawBytes = rs.getBytes(11);
                   
       }
        //OutputStream o = response.getOutputStream();
        o.flush();
        o.close();
        rs.close();
        st.close();
        con.close();
        }catch(Exception e)
        {}%>
</body>
</html>