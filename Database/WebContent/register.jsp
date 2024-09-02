<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#txt
{
    padding: 20px;
    border: 1px solid red;
    box-shadow: 1px 1px 20px -5px gray;
    border-radius: 10px 10px;
}
#di
{
    width: 600px;
    border: 1px solid black;
    box-shadow: 1px 1px 20px -5px gray;
    padding:40px;
    border-radius:40px 40px;
}
</style>
</head>
<body>
    <form action="register" method="post">
        <center>
            <div>
                <input type="text" name="id" id="txt" placeholder="User ID"/><br><br>
                <input type="text" name="name" id="txt" placeholder="Name"/><br><br>
                <input type="text" name="Email"id="txt"  placeholder="Email ID"/><br><br>
                <input type="text" name="addr"id="txt"  placeholder="Address"/><br><br>
                <input type="password" name="pass"id="txt"  placeholder="Password"/><br><br>
                <input type="submit" value="Register"/>
            </div>
        </center>
    </form>
</body>
</html>