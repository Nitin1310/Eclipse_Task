<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="styleSelect.css" rel="stylesheet" type="text/css" />
<title>CoderHub</title>

<style>
.table2 
{
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-collapse: collapse;
    border-spacing: 0px;
    border: solid 1px black;
    margin-top: 0px;
   
        
}
.th2 
{
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
.tr2 
{
	background: rgba(150, 200, 200, 0.423);
}
.td2 
{
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
<% 
String cOpp=request.getParameter("q");
if(cOpp.equals("pastProjectList"))
{
                ServletContext sc= getServletContext();
        	Connection con= (Connection)sc.getAttribute("mycon");
                Statement stmt=con.createStatement(); 
               
                                                             
            String query = "select * from PastProjectList";
            ResultSet rs = stmt.executeQuery(query);
            %>
 <center><tabel style="width:100%;">
    <th style="width: 100%;  text-align: center; " ><h3 class="h2" style="margin-top: 0px;background-color: #F8A92E; margin-bottom: 0px; margin-left: 0px;height: 35px;">Past Project List</h3>
	
	</th>
    </tabel></center>
<center><table cellspacing="0px"class="tabel2" style="width:100%;" >

	
	<tr class="tr2">
            <th class="th2" width="40" >Project ID</th>
            <th class="th2" width="160">Project Name</th>
            <th class="th2" width="80">Area</th>
            <th class="th2" width="70">Duration</th>
            <th class="th2" width="220">Description</th>
            <th class="th2" width="113">Assign To</th>
            <th class="th2" width="113">Assign Date</th>
            <th class="th2" width="100">Status</th>
        </tr>
            
    <%
            while(rs.next())
            {
            String ID=rs.getString("ID");
            String Project_Name=rs.getString("Project_Name");
            String Area=rs.getString("Area");
            String Duration=rs.getString("Duration");
            String Description=rs.getString("Description");
            String Assign_To=rs.getString("Assign_To");
            String Assign_Date=rs.getString("Assign_Date");
            String Status=rs.getString("Status");
%>

        <tr class="tr2" onmouseover="this.style.background='rgba(200, 100, 200, 0.423)';" onmouseout="this.style.background='rgba(150, 200, 200, 0.423)';">
            <td class="td2"  align="center"><%=ID%></td>
            <td class="td2"  align="center"><%=Project_Name%></td>
            <td class="td2"  align="center"><%=Area%></td>
            <td class="td2"  align="center"><%=Duration%></td>
            <td class="td2"  align="center"><%=Description%></td>
            <td class="td2"  align="center"><%=Assign_To%></td>
            <td class="td2"  align="center"><%=Assign_Date%></td>
            <td class="td2"  align="center"><%=Status%></td>
        </tr>
<%
            }
}
else if(cOpp.equals("currentProjectList"))
{
%>
<div class="divStyle2"><select id="pArea" name="pArea" style="margin-left: 4.5%; width: 165px; background: transparent; border: 0"  onchange="dropDownList(this.value)">
				<option value="S">Project Area</option>
<%
    
try
{
    
	   ServletContext sc= getServletContext();
	Connection con= (Connection)sc.getAttribute("mycon");
	Statement stmt = con.createStatement();
		
		
   	ResultSet rs= stmt.executeQuery("select Area from CurrentProjectList Group By Area");  
	 while(rs.next())
	 {
		 out.write("<option value=" + rs.getString("Area") + ">" + rs.getString("Area") + "</option>");
	 }
	 
}
catch(Exception e)
{
	
}

%>


</select>
 <% 
  
                ServletContext sc= getServletContext();
        	Connection con= (Connection)sc.getAttribute("mycon");
                Statement stmt=con.createStatement(); 
               
                                                             
            String query = "select * from weaks";
            ResultSet rs = stmt.executeQuery(query);
            %>
            <select disabled="true"id="pDuration" name="pDuration" style="margin-left: 3.5%; margin-top: 0px; width: 165px; background: transparent; border: 0"
                                onchange="chGate1(this.value)">
				<option value="S">Project Duration</option>
         <%
         while(rs.next())
	 {
		 out.write("<option value=" + rs.getString("Weaks_") + ">" + rs.getString("Weaks_") + "</option>");
	 }

         %>
         
            </select></div>
         <%
}
%>
</table>
   
<br><br>
</body>
</html>