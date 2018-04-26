package database;
import java.sql.*;

public class Dbconnect {
	static Connection cn=null;
	static String driver="com.mysql.jdbc.Driver";
	static String url="jdbc:mysql://localhost/semsev";
	//static String user="root"; //"subhasisc";
	//static String pass="subhasisdrop123";//"sub1996";
	static String user="subhasisc";
	static String pass="sub1996";
	public static Connection getCon(){
		try{
			Class.forName(driver);
			cn=DriverManager.getConnection(url,user,pass);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return cn;
	}
}
