package DB;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import MyWeb.Web;

public class DBOperation {
	private static Connection connection = null;
	
	public static List<Web> getWebList() {
		connection = DBConnection.getConnection();
		List<Web> webList = new ArrayList<Web>();
		Web web = null;
		Statement st1;
		Statement st2;
		try {
			st1 = connection.createStatement();
			st2 = connection.createStatement();
			ResultSet resultSet1 = st1.executeQuery("select * from tags");
			ResultSet resultSet2 = st2.executeQuery("select * from record");
			while (resultSet1.next() && resultSet2.next()) {
				web = new Web(resultSet2.getInt(1), resultSet2.getString(2), resultSet2.getInt(3),
						resultSet1.getString(2), " ”∆µ","ªÊª≠",1);
				webList.add(web);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return webList;
	}
	
}
