<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Career</title>
<link href="CSS/header.css" type="text/css" rel="stylesheet">
</head>
<body>
    <%@include file="Header.html" %>
    <div id="main2">
        <center>
            <div id="data">
            <form action="doctor" method="post">
            <center><h1>Information about Doctor</h1></center>
            <i><p style="color:red;">${param.err}</p></i>
            <input type="text" name="fname" placeholder="First Name" class="textbox"/><br><br>
            <input type="text" name="lname"/ placeholder="Last Name" class="textbox"/><br><br>
            <img src="Images/find.png" style="width: 24px; height: 24px;    margin-left: 9px; margin-top: 17px; position: absolute;"/>
            <select name="doctors" id="area2">
             <option value="">Specialitles</option>
               <option value="Dentist">Dentist</option>
                <option value="Ophthalmologist">Ophthalmologist</option>
                <option value="Dermatologist/Cos">Dermatologist/Cos</option>
                <option value="Homeopath">Homeopath</option>
                <option value="Ayurveda">Ayurveda</option>
                <option value="Cardiologist">Cardiologist</option>
                <option value="Gastroenterologist">Gastroenterologist</option>
                <option value="Psychiatrist">Psychiatrist</option>
                <option value="Ear-Nose-Throat (ENT)">Ear-Nose-Throat (ENT)</option>
                <option value="Gynecologist/Obste">Gynecologist/Obste</option>
                 <option value="Neurologist">Neurologist</option>
                <option value="Urologist">Urologist</option>
                
            </select><br>
            <img src="Images/location.png" style="width: 30px; height: 30px;    margin-left: 7px; margin-top: 15px; position: absolute;"/>
            <select name="location" id="area2">
                <option value="Delhi">Delhi</option>
                <option value="Mumbai">Mumbai</option>
                <option value="Bangalore">Bangalore</option>
                <option value="Hyderabad">Hyderabad</option>
                <option value="Kolkata">Kolkata</option>
            </select><br>
            <input type="submit" value="Create Account" id="button"  name="reg" style="float: left; margin-left: 143px; margin-top: 10px;"/>
            </form>
            </div>
            
        </center>
    </div>
    <%@include file="Footer.html" %>
</body>
</html>