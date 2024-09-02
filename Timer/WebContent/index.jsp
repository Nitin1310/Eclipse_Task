<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page session="false" %>
<%
HttpSession s=request.getSession(false);

if(s==null) { %>

   <!--  <jsp:forward page="/Expired" />--> 
<% } %>
<% String duration=(String)s.getAttribute("duration"); %>
<% int a=Integer.parseInt(duration); %>
<head><title></title>
<script type="text/javascript">
var cmin=<%= a %>;
var total=cmin*60;
cmin=cmin-1;
var ctr=0;
var dom=document.getElementById("kulu");
function ram(){
var dom=document.getElementById("kulu");
dom.value=(cmin)+"minutes"+(total%60)+"seconds";
<% String t=(String)s.getAttribute("over"); %>
var tt=<%= t %>
if(tt=="false"){ram1();}
total=total-1;ctr++;
if(ctr==60){ctr=0;cmin=cmin-1;}
if(total==0){
ram1();}
setTimeout("ram()", 1000);
              }
function ram1(){

window.location.replace("/hcl/TTimeUp.jsp");

                }
</script>
</head>
<body background="image/background.gif" onload="ram()"><center>
<form name="form1">
<input type="text" id="kulu"/>
</form>
</center>
</body>
</html>