package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/crawler?characterEncoding=UTF8", 
                    "root","");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("ydfa");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ydfa");
		}
		return connection;
	}
}
