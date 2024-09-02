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
<%
FileInputStream fis;
PrintWriter k=response.getWriter();
String cat= request.getParameter("category");
 String pat=request.getParameter("pattern");
  String col=request.getParameter("color");
   String catt=request.getParameter("category_id");
    String len=request.getParameter("Length");
     String pri=request.getParameter("price");
      String fbrc=request.getParameter("fabric");
       String idelfr=request.getParameter("ideal_for");
String pic1=request.getParameter("photo1");
String pic2=request.getParameter("photo2");
String pic3=request.getParameter("photo3");
//System.out.println(cat+":"+pat+":"+col+":"+catt+":"+len+":"+pri+":"+fbrc+":"+idelfr+":"+pic1+":"+pic2+":"+pic3);

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
con.setAutoCommit(false);
PreparedStatement ps=con.prepareStatement("insert into KidsDress values(?,?)");
ps.setString(1, catt);
                  
                       File f1 = new File(pic1);
                   
    
     fis = new FileInputStream(f1);
        
     ps.setBinaryStream(1, fis,(int) f1.length());
  
    int o=ps.executeUpdate();
     con.commit();
    if(o>0)
    {
       k.println("Update successfully");
    }
    


}
catch(Exception e) 
{
 k.println(e);
}
%>
</body>
</html>