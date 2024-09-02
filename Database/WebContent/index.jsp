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
            <h1>Login Page</h1>
            <div style="border: solid 1px gray; border-radius: 20px 20px; box-shadow: 1px 1px 41px -6px; padding: 20px; width: 600px;">
            <form action="login" method="post">
                <input type="text" name="uid" style="border: 1px solid gray; box-shadow:1px 1px 41px -6px; border-radius: 10px 10px;padding: 10px;" placeholder="User ID"/>
            <br><br> <input type="password" name="pass" style="border: 1px solid gray; box-shadow: 1px 1px 41px -6px; border-radius: 10px 10px;padding: 10px;" />
            <br><center>
               <br> <input type="submit" value="Login"/><br>
                <a href="register.jsp">Register Here</a>
                <%String err=request.getParameter("err");%>
                <%if(err!=null) {%>
                <%=err %>
                <%} %>
            </center>
            </form>
            </div>
        </center>
</body>
</html>