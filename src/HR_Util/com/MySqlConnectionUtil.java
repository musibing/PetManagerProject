package HR_Util.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class MySqlConnectionUtil {
Connection conn=null; 
String Username="root";
String Passwords="musibing";
String Drive="com.mysql.jdbc.Driver";
String Url="jdbc:mysql://127.0.0.1:3306/javaprj_5";
public Connection getConn(){
	try {
		Class.forName(Drive);
		conn=DriverManager.getConnection(Url, Username, Passwords);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return conn;
}

	public static void main(String[] args) {
	System.out.println(new MySqlConnectionUtil().getConn()!=null);

	}

}
