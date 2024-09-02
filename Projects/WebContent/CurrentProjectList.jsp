<%-- 
    Document   : ProjectDuration
    Created on : Oct 16, 2014, 11:00:09 PM
    Author     : Shailendra Thakur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styleSelect.css" rel="stylesheet" type="text/css" />
        <title>Insert Title Here</title>
        <style>
        .table2 {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-collapse: collapse;
    border-spacing: 0px;
    border: solid 1px black;
    margin-top: 0px;
   
        
}
.th2 {
font-family: verdana,arial,sans-serif;
font-size: 13px;
background-color: #005459;
border-color: aliceblue;
border-style: solid;
border-spacing: 0px;
border: solid 1px #06383B;
color: #2EB1B9;
text-shadow: 1px 1px 1px black;
height: 30px;
}
.tr2 {
	background: rgba(150, 200, 200, 0.423);
}
.td2 {
	color: #051A1B;
        font-family: verdana,arial,sans-serif;
	font-size:14px;
        border-spacing: 0px;
	border-width: 0px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
        border-right: 0px;
border-width: 1px;
border-color: black;
border-collapse: collapse;
border-bottom: -1px;
border-left: 0px;
border-top: 0px;
background: rgba(150, 200, 200, 0.423);
} 
        </style>
    </head>
    <body>
        <form action="newCustomer.jsp" >
            
       <% 
String area=request.getParameter("y");
String duration=request.getParameter("w");
duration=duration+" Weak";

                ServletContext sc= getServletContext();
        	Connection con= (Connection)sc.getAttribute("mycon");
                Statement stmt=con.createStatement(); 
               
                                                             
            String query = "select * from CurrentProjectList where area='"+area+"' and duration='"+duration+"' and Status is null";
            ResultSet rs = stmt.executeQuery(query);
            %>

    <center><tabel style="width:100%;">
    <th style="width: 100%;  text-align: center; " ><h3 class="h2" style="margin-top: 0px;background-color: #F8A92E; margin-bottom: 0px; margin-left: 0px;height: 35px;">Current Project List</h3>
	
	</th>
    </tabel></center>
<center><table style="width:100%;" cellspacing="0px"class="tabel2" >

	
	<tr class="tr2">
            <th class="th2" width="40" >Project ID</th>
            <th class="th2" width="160">Project Name</th>
            <th class="th2" width="80">Area</th>
            <th class="th2" width="70">Duration</th>
            <th class="th2" width="220">Description</th>
            <th class="th2" width="100">Apply</th>
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

        <tr class="tr2" onmouseover="this.style.background='rgba(200, 100, 200, 0.423)';" onmouseout="this.style.background='rgba(150, 200, 200, 0.423)';">
            <td class="td2" align="center"><%=ID%></td>
            <td class="td2" align="center"><%=Project_Name%></td>
            <td class="td2" align="center"><%=Area%></td>
            <td class="td2" align="center"><%=Duration%></td>
            <td class="td2" align="center"><%=Description%></td>
            <td class="td2" align="center" > 
                <input type="submit" name="applybtn" style="box-shadow: -8px 8px 10px 3px rgba(0,0,0,0.2)" value="<%=ID%>" class="btnClass" /></td>
            
        </tr>
        <%
            } 
        %>
        </table></center>
        </form>       
    </body>
</html>
