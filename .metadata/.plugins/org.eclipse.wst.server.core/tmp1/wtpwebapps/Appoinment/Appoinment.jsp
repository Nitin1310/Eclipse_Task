<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewreport" content="width=device-width">
<title>Appoinment</title>
<link href="CSS/header.css" type="text/css" rel="stylesheet">
</head>
<body>
    <%@include file="Header.html" %>
    <form action="search.jsp" method="post">
    <div id="main" style="background-image: url('Images/Doctor.jpg'); background-repeat: no-repeat;">
        <div id="search">
            <img src="Images/location.png" style="width: 30px; height: 30px;    margin-left: 7px; margin-top: 15px; position: absolute;"/>
            <select name="location" id="area">
                <option value="Delhi">Delhi</option>
                <option value="Mumbai">Mumbai</option>
                <option value="Bangalore">Bangalore</option>
                <option value="Hyderabad">Hyderabad</option>
                <option value="Kolkata">Kolkata</option>
            </select>
            <img src="Images/find.png" style="width: 24px; height: 24px;    margin-left: 9px; margin-top: 17px; position: absolute;"/>
             <select name="doctors" id="area">
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
                
            </select>
            <input type="submit" id="searchbtn" value=""style="background-image: url('Images/search.png');"/>
        </div>
    </div>
    </form>
    <%@include file="Footer.html" %>
</body>
</html>