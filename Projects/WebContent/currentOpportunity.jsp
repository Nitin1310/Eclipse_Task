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
<title>freelancer</title>

<script>
		
		function chGate(str)
		{
			
				var xmlhttp;
if(str=="S" || str=="pastProjectList")
	document.getElementById("first2").style.visibility = 'hidden';
else
    document.getElementById("first2").style.visibility = 'visible';
					if (window.XMLHttpRequest)
					{// code for IE7+, Firefox, Chrome, Opera, Safari
							xmlhttp=new XMLHttpRequest();
					}

					else
					{// code for IE6, IE5
						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					}
					
						xmlhttp.onreadystatechange=function()
							{
								if (xmlhttp.readyState==4 && xmlhttp.status==200)
									{
											document.getElementById("first1").innerHTML=xmlhttp.responseText;
									}
							}
								xmlhttp.open("GET","PastProjectList.jsp?q="+str,true);
									xmlhttp.send();
									
					}
</script> 


<script>
		
		function chGate1(str)
		{
			
			var str1=document.getElementById("pArea");
                        var str2= str1.value;
				var xmlhttp;

					if (window.XMLHttpRequest)
					{// code for IE7+, Firefox, Chrome, Opera, Safari
							xmlhttp=new XMLHttpRequest();
					}

					else
					{// code for IE6, IE5
						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
					}
					
						xmlhttp.onreadystatechange=function()
							{
								if (xmlhttp.readyState==4 && xmlhttp.status==200)
									{
											document.getElementById("first2").innerHTML=xmlhttp.responseText;
									}
							}
								xmlhttp.open("GET","CurrentProjectList.jsp?w="+str+"&y="+str2,true);
									xmlhttp.send();
									
					}
</script> 
<script>
function dropDownList(str)
{
    
    if(str==="S")
    	{
        document.getElementById("pDuration").disabled=true;
        document.getElementById("first2").style.visibility = 'hidden';
    	}
    else
        document.getElementById("pDuration").disabled=false;
    
}
</script>

</head>
<body>
<form action="aa">
     <h1 align="center" class="h1">Current Opportunity</h1>
<div class="divStyle">
<table align="center">
<br><br>
	<tr>
	
				<td>
					<p class="fh">Select Project List :<p>
			
				</td>
				
				<td>
				<select name="cOpp" class="dropdown"  onchange="chGate(this.value)">
				<option value="S">Select :</option>
                                <option value="pastProjectList">Past Project List</option>
                                <option value="currentProjectList">Current Project List</option>
					 					
  				</select>
  			</td>
	
	</tr>
	
	
</table>
</div>
<br>

	
			
					<div align="center" id="first1" style="margin-left: 4%; border: 1; border-color: graytext; margin-top: 80px;">
			
					</div>
					
					<br><br>
					
					<div id="first2" style="margin-left: 0%;border: 1; border-color: graytext">
			
					</div>
                                        
							
					
					
		


<input type="hidden" name="cOpp" id="cOpp">
</form>



</body>
</html>