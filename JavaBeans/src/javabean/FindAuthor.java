package javabean;
import java.io.Serializable;
import java.util.*;
import java.sql.*;
import java.io.*;
public class FindAuthor implements Serializable
{
	public String url, authorName, driverName, authorId;
	public Vector result;
	public void setUrl(String url)
	{
		if(url!= null)
		  this.url = url;
	}
	public void setAuthorId(String authorId)
	{
		if (authorId != null)
			this.authorId = authorId;
	}
	public void setDriverName(String driverName)
	{
		if (driverName != null)
			this.driverName = driverName;
	}
	public String getAuthorId()
	{
			return(this.authorId);	
	}
	public Vector getResult()
	{
		Vector v = new Vector();
		try
		{
			Class.forName(driverName);
			Connection con = DriverManager.getConnection("jdbc:sqlserver://FUTURE;databaseName=Temp","sa","123");
PreparedStatement stat = con.prepareStatement( "SELECT * FROM Sample1 WHERE au_id = ? ");
			stat.setString(1,authorId);
			ResultSet rs = stat.executeQuery();

			if(rs.next())
			{
				v.addElement(rs.getString("au_fname"));
				v.addElement(rs.getString("address"));
				v.addElement(rs.getString("city"));
				v.addElement(rs.getString("state"));
				v.addElement(rs.getString("zip"));
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		this.result = v;
		return result;
	}
}