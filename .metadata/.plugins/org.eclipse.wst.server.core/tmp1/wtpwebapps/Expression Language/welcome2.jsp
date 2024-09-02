<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expression Language Examples</title>
<%
  pageContext.setAttribute("pageColor", "red");
%>
</head>
<body bgcolor="${pageScope.pageColor }">
<h1>Welcome to the ${param.dept} Department</h1>

Here are some basic comparisons:
<p>
Is 1 less than 2? ${1<2}<br>
Does 5 equal 5? ${5 eq 5} <br>
Is 6 greater than 7? ${6 gt 7}<br>

<p>Now for some math:<br>
6 + 7 = ${6 + 7}<br>
8 x 9 = ${8 * 9}<br>
8 / 2 = ${8 div 2}<br>


<hr>You appear to be using the following browser:
${header["user-agent"]}
</body>
</html>