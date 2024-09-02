

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/uploadm")
public class uploadm extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public uploadm() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contentType = request.getContentType();
		if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
		DataInputStream in = new DataInputStream(request.getInputStream());
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		while (totalBytesRead < formDataLength) {
		byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
		totalBytesRead += byteRead;
		}
		String file = new String(dataBytes);
		String saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
		System.out.println(saveFile);
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,contentType.length());
		int pos;
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		int startPos = ((file.substring(0, pos)).getBytes()).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

		FileOutputStream fileOut = new FileOutputStream(saveFile);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();

		Connection connection = null;
		String connectionURL = "jdbc:sqlserver://FUTURE;databaseName=Oakridge";;;
		ResultSet rs = null;
		PreparedStatement psmnt = null;
		FileInputStream fis;
		try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		connection = DriverManager.getConnection(connectionURL, "sa", "123");
		File f = new File(saveFile);
		psmnt = connection.prepareStatement("insert into songs(title,song) values(?,?)");
		fis = new FileInputStream(f);
		psmnt.setString(1, request.getParameter("title"));
		psmnt.setBinaryStream(2, (InputStream)fis, (int)(f.length()));
		int s = psmnt.executeUpdate();
		if(s>0) {
		    
		System.out.println("Uploaded successfully !");
		}
		else {
		System.out.println("unsucessfull to upload file.");
		}
		}
		catch(Exception e){e.printStackTrace();}
		}
	}

}
