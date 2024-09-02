There JSTL mainly provides 5 types of tags:


Tag Name

Description

core tags The JSTL core tag provide variable support, URL management, flow control etc. The url for the core tag is http://java.sun.com/jsp/jstl/core . The prefix of core tag is c. 
sql tags The JSTL sql tags provide SQL support. The url for the sql tags is http://java.sun.com/jsp/jstl/sql and prefix is sql. 
xml tags The xml sql tags provide flow control, transformation etc. The url for the xml tags is http://java.sun.com/jsp/jstl/xml and prefix is x. 
internationalization tags The internationalization tags provide support for message formatting, number and date formatting etc. The url for the internationalization tags is http://java.sun.com/jsp/jstl/fmt and prefix is fmt. 
functions tags The functions tags provide support for string manipulation and string length. The url for the functions tags is http://java.sun.com/jsp/jstl/functions and prefix is fn. 

For creating JSTL application, you need to load jstl.jar file.

download jstl1.2.jar file 

JSTL Core Tags

The JSTL core tags mainly provides 4 types of tags:
•miscellaneous tags: catch and out.
•url management tags: import, redirect and url.
•variable support tags: remove and set.
•flow control tags: forEach, forTokens, if and choose.

Syntax for defining core tags 





1.<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


c:catch

It is an alternative apporach of global exception handling of JSP. It handles the exception and doesn't propagate the exception to error page. The exception object thrown at runtime is stored in a variable named var. 

Example of c:catch

Let's see the simple example of c:catch.





1.<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
2.<c:catch>  
3.int a=10/0;  
4.</c:catch>  


c:out

It is just like JSP expression tag but it is used for exression. It renders data to the page.

Example of c:out

Let's see the simple example of c:out.
index.jsp 




1.<form action="process.jsp" method="post">  
2.FirstName:<input type="text" name="fname"/><br/>  
3.LastName:<input type="text" name="lname"/><br/>  
4.<input type="submit" value="submit"/>  
5.</form>  
process.jsp 




1.<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
2.First Name:<c:out value="${param.fname}"></c:out><br/>  
3.Last Name:<c:out value="${param.lname}"></c:out>  

download this example 


c:import

It is just like jsp include but it can include the content of any resource either within server or outside the server.

Example of c:import

Let's see the simple example of c:import to display the content of other site.
index.jsp 




1.<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
2.<h1>ABC.com</h1>  
3.<hr/>  
4.<c:import url="http://www.javatpoint.com"></c:import>  


Example of c:import to display the source code

Let's see the simple example of c:import to display the source code of other site.
index.jsp 




1.<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
2.<h1>ABC.com</h1>  
3.<hr/>  
4.<c:import var="data" url="http://www.javatpoint.com"></c:import>  
5.  
6.<h2>Data is:</h2>  
7.<c:out value="${data}"></c:out>  

download this example 


c:forEach

It repeats the nested body content for fixed number of times or over collection.

Example of c:forEach

Let's see the simple example of c:forEach.





1.<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
2.<c:forEach var="number" begin="5" end="10">  
3.<c:out value="${number}"></c:out>  
4.</c:forEach>  

download this example 


c:if

It tests the condition.

Example of c:if

Let's see the simple example of c:if.





1.<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
2.<c:set var="number" value="${200}">  
3.<c:if test="${number<500}">  
4.<c:out value="number is less than 500"></c:out>  
5.</c:if>  


c:redirect

It redirects the request to the given url.





1.<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
2.<c:redirect url="http://www.javatpoint.com"></c:redirect>  
