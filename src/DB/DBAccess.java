package DB;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class DBAccess {
//String url="jdbc:mysql://localhost/crawler?characterEncoding=UTF8";
//String user="root";
//String password="";
Connection conn=null;
Statement stmt=null;
public void init(){
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/crawler?characterEncoding=UTF8", 
                "root","");
//		conn=DriverManager.getConnection(url, user, password);
		stmt=(Statement) conn.createStatement();
	}
	catch(ClassNotFoundException e){
		System.out.println("�Ҳ�����������");
		e.printStackTrace();
		
	}
	catch(SQLException e){
		e.printStackTrace();
	}
}
public void insert(String uname,String upass)throws SQLException
{
	String str="insert into users values('"+uname+"','"+upass+"')";
	stmt.execute(str);

}
public void update(String uname,String upass)throws SQLException
{
	String str="update users set upass='"+upass+"' where uname='"+uname+"'";
	stmt.execute(str);

}
public String query1(String uname)throws SQLException{
	String str="select upass from users where uname='"+uname+"'";
	ResultSet rs=stmt.executeQuery(str);
	rs.next();
	String result=rs.getString("upass");
	return result;
}
public String query2(String uname)throws SQLException{
	String str="select uname from users where uname='"+uname+"'";
	ResultSet rs=stmt.executeQuery(str);
	rs.next();
	String result=rs.getString("uname");
	return result;
}
public void submit()throws SQLException{
	stmt.close();
	conn.close();
}
}
