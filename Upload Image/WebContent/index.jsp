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
 
        <form id="form1"  action="upload.jsp" >
            <table>
               
                <tr>
                    <td> Category<input type="text" name="category"/></td>
                     </tr> 
                     <tr> <td> Pattern<input type="text" name="pattern"/></td>
                     </tr>
                     <tr>
                         <td> color<input type="text" name="color"/></td>
                    </tr>
                    
                    <tr> 
                        <td> Category_id<input type="text" name="category_id"/></td>
                     </tr>
                     <tr>
                         <td>Length<input type="text" name="Length"/></td>
                     </tr>
                     <tr>
                         <td>Price<input type="text" name="price"/></td>
                     </tr>
                     <tr>
                         <td> Fabric<input type="text" name="fabric"/></td>
                    </tr> 
                    <tr>
                        <td> Ideal_For<input type="text" name="ideal_for"/></td>
                    </tr> 
                    <tr>
                        <td>Select Photo  </td>
              
                  
                        <td><input type="file"  name="photo1" />
                 <td><input type="file"  name="photo2" />
                         <td><input type="file"  name="photo3" />
                </tr>
            </table>
            <p/>
            <input type="submit" value="Add Photo"/>
            <p/>
        </form>
        <a href="img.jsp">Show Image</a>
         
        
</body>

</html>