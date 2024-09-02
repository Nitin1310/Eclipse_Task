<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Coder Hub</title>
<link href="CSS/header.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <div id="header">
        <div id="img">
            <img src="images/coder.png" style="width:100%; height:100%;"/>
        </div>
       <div id="menu">
                <ul>
                    <li><a href="CoderHub.jsp">Home</a></li>
                    <li><a href="work.jsp">Work</a></li>
                    <li><a href="howwork.jsp">How it work</a></li>
                    <li><a href="AboutUs.jsp">About us</a></li>
                    <li><a href="ContacUs.jsp">Contact us</a></li>
                </ul>
          </div>
          <%String user=(String)session.getAttribute("user");  %>
          <h2 style="float:right; color:#004b82"><%=user %></h2>
          <div id="profile">
            <img src="http://localhost:8080/CoderHub/pic.jsp" style="width:70px; height:100%;border-radius: 50% 50%; border: solid 1px;"/>
        </div>
          </div>
</body>
</html>