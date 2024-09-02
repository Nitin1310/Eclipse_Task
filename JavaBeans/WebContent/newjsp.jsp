<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%ArrayList<String> pList = new ArrayList<String>();
        pList.add("Peter");
        pList.add("Sandra");
        pList.add("Samuel");
        request.setAttribute("pList",pList);%>
        <c:forEach items="${pList}" var="item">
           <p>"${pList}"<p/>
        </c:forEach>
        <h1>Hello World!</h1>
    </body>
</html>
