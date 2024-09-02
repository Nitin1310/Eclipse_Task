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
        <form action="A_AddCurrentProjects" method="post">
           <% 
               ServletContext sc=getServletContext();
               Connection con=(Connection)sc.getAttribute("mycon");
                            
              %>		
                
                <br>  
                <h2 align="center">ADD NEW PROJECT</h2>
                
                <div align="center">
                
                <table border="1" cellpadding="5" cellspacing="5">
                <tr>
                <th>Project NAME</th>
                <th >AREA</th>
                <th >DURATION</th>
                
                </tr>
                <tr>
                
                <td align="center" >
                <input type="text" name="name" /></td>
                <td align="center" >
                <%
                try
                {
               Statement smt=con.createStatement();
                ResultSet rs=smt.executeQuery("select * from Area");
                %>
                <select name="location">
                    <%
                    while(rs.next())
                    {
                    %>
                <option value="<%= rs.getString("Area")%>"><%= rs.getString("Area")%></option>
                   <% }}catch(SQLException e){System.out.println(e);} %>
                    </select></td>
                <%
                    Statement smt3=con.createStatement();
                    ResultSet rs3=smt3.executeQuery("select Weaks_ from Weaks");
                %>
                <td  align="center">
                <select name="duration">
                    <%
                    while(rs3.next())
                    {
                    %>
                <option value="<%= rs3.getString("Weaks_")%>"><%= rs3.getString("Weaks_")%></option>
                <% } %>  
                </select></td>
                
                </tr>
                </table>
                
                <br>
              <span style="margin-left: -188px;border: solid;border-width: 1px;">PROJECT DESCRIPTION</span><br><br>
                 <textarea style="margin-left: 2px;" name="description" rows="6" cols="50"></textarea>
               
                
                
                </div>
                
                
                <br><br>
                <div align="center">
                    <input type="Submit" value="Insert" name="btn" />  
                    <%
                     try
               {
            
              Statement smt=con.createStatement();
             ResultSet rs=smt.executeQuery("select * from CurrentProjectList");
             %>
 		
        	</div>
                <h2 align="center">CURRENT PROJECT LIST</h2>
           <table align="center" border="1" cellpadding="3" cellspacing="3"> 
           
                <tr>
                	<th>ID</th>
                    
                    <th>Project Name</th>
                    <th>Area</th>
                    <th>Duration</th>
                    
                    <th>Description</th>
                </tr>
                <%  
                   while(rs.next())
                {
                 
                %>
            
                <tr>
                	<td> <%= rs.getString("ID") %></td>
                    <td> <%= rs.getString("Project_Name") %></td>
                    <td> <%= rs.getString("Area") %></td>
                    <td> <%= rs.getString("Duration") %></td>
                    <td> <%= rs.getString("Description") %></td>
                    <td align="center"> <input type="submit" name="btn" value="<%=rs.getString("ID")%>"/></td>            
                </tr>
                <% }
                
               }
                
                catch(Exception e)
                {
                     e.printStackTrace();
                }
              
                
                %>    
                
               </table>
        </form>
    </body>
</html>