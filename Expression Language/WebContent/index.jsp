<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <form method="post" action="welcome.jsp">
        Name <input type="text" name="user" >
        <input type="submit" value="EL Example1">
    </form>
    
     <form method="post" action="welcome2.jsp">
        Department <input type="text" name="dept" >
        <input type="submit" value="EL Example2">
    </form>
    
    <form method="get" action="HomeServlet">
        <input type="submit" value="EL Example3">
    </form>
</body>
</html>