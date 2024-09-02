<%@page import="java.io.*"%>
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
    <center>
        <div style="border: solid 1px black; border-radius: 20px 20px; width: 60%; height: 50%;  background-color: aliceblue;">
            <form action="List.jsp">
            <table>
                <tr>
                    <td>Upload Song</td>
                    <td><input type="file" name ="song"/></td>
                </tr>
                <tr>
                    <td>Title of Song</td>
                    <td><input type="text" name="title"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Save"/></td>
                </tr>
                <tr>
               
                </tr>
            </table>
            </form>
        </div>
      </center>
       <center>
        <div style="border: solid 1px black; border-radius: 20px 20px; width: 60%; height: 50%;  background-color: aliceblue;">
            <table>
             <tr>
                    <td>Title</td>
                    <td>Release On</td>
                </tr>
            <%
            Connection con=null;
            FileInputStream fis=null;
            String song=null;
            try
            {
               //  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               Class.forName("oracle.jdbc.driver.OracleDriver");
               con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
                 //con = DriverManager.getConnection("jdbc:sqlserver://FUTURE;databaseName=Oakridge","sa","123");
                 String sql = "Select * from Songs";
                 Statement st = con.createStatement();
                 ResultSet rs = st.executeQuery(sql);
                 while(rs.next())
                 {
                	 song = rs.getString(1);
                	
                	%>
                	 
                <tr>
               
                    <td><a href="Play.jsp?sid=<%=song%>" ><%=song %></a></td>
                    <td><%=rs.getString(3) %>
                </tr>
                	 <%
                	 
                 }
            }catch(Exception e)
            {
            	e.printStackTrace();
            }
            %>
               
                
            </table>
        </div>
      </center>
</body>
</html>