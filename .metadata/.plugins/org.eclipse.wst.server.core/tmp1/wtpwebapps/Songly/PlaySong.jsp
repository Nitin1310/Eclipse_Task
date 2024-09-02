<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>Playing song</head>
<body>
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="160" height="160">
<param name="movie" value="Player.swf">
<param name="src" value="playsong.jsp?title=<%=request.getParameter("sid")%>" >
<param name="quality" value="High">
<embed src="Player.swf" SRC="playsong.jsp?title=<%=request.getParameter("sid")%>" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="160" height="160">
</object>

</body>
</html>