<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="styleSelect.css" rel="stylesheet" type="text/css" />
        <title>CoderHub</title>
        
    </head>
    <body>
        <Form action="newCustomer.jsp">
            <%
            ServletContext sc= getServletContext();
        	Connection con= (Connection)sc.getAttribute("mycon");
            Statement stmt=con.createStatement(); 
               
                                                             
            String query = "select * from CurrentProjectList where Status is null";
            ResultSet rs = stmt.executeQuery(query);
            %>

    <div align="left" style="font-size: 20px; margin-top: 20px;"><h3 class="h2">Current Project List</h3></div>
<center><table cellspacing="0px"class="hovertable" >

	<tr>
            <th width="40" >Project ID</th>
            <th width="160">Project Name</th>
            <th width="80">Area</th>
            <th width="70">Duration</th>
            <th width="220">Description</th>
            <th width="100">Apply</th>
        </tr>
            
    <%
            while(rs.next())
            {
            String ID=rs.getString("ID");
            String Project_Name=rs.getString("Project_Name");
            String Area=rs.getString("Area");
            String Duration=rs.getString("Duration");
            String Description=rs.getString("Description");
           
%>

        <tr onmouseover="this.style.background='rgba(40, 50, 90, 0.223)';" onmouseout="this.style.background='rgba(200, 100, 10, 0.423)';">
            <td align="center"><%=ID%></td>
            <td align="center"><%=Project_Name%></td>
            <td align="center"><%=Area%></td>
            <td align="center"><%=Duration%></td>
            <td align="center"><%=Description%></td>
            <td align="center" > 
                <input type="submit" name="applybtn" style="box-shadow: -8px 8px 10px 3px rgba(0,0,0,0.2)" value="<%=ID%>" class="btnClass" /></td>
            
        </tr>
        <%
            } 
        %>
        </table></center>
        </form>       
    </body>
</html>
