package Dao.DADA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Date;
import DB.DBConnection;

public class UserDao {
	Connection connection=null;
	
	public UserDao(){
		 connection= DBConnection.getConnection();
	}
	public User Login(String uname,String psw){//根据用户名和密码获取用户完整信息
		
		String sqlString="select * from users where uname=? and upass=?";
		PreparedStatement psm=null;
		ResultSet rSet=null;
		User user=null;
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, uname);
			psm.setString(2, psw);
		 	rSet=	psm.executeQuery();
		 	if (rSet.next()) {
		 		user=new User();
				user.setUserName(rSet.getString("uname"));
				user.setEmail(rSet.getString("email"));
				user.setGrade(rSet.getString("grade"));
				user.setInterest(rSet.getString("interest"));
				user.setLastTime(rSet.getDate("lasttime"));
				user.setMobileString(rSet.getString("mobile"));
				user.setPsw(rSet.getString("upass"));
				user.setRegisTimeDate(rSet.getDate("registtime"));
				user.setScoreString(rSet.getString("score"));
				user.setSexString(rSet.getString("sex"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	public boolean checkUserName(String userName){//检查数据库中有无用户名重复者
		String sqlString="select * from users where uname=?";
		
		PreparedStatement psm=null;
		ResultSet rSet=null;
		User user=null;
			try {
				psm=connection.prepareStatement(sqlString);
				psm.setString(1, userName);
			rSet=psm.executeQuery();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if ((rSet.next())==true) {//数据库中有重名者
					return false;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		return true;
	}
	
	
	public boolean checkEmail(String email){//检查数据库中有无email重复者
		String sqlString="select * from users where email=?";//检查email是否有重复的
		ResultSet rSet=null;
		PreparedStatement psm=null;
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, email);
			rSet= psm.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if (rSet.next()==true) {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
		return true;
	}
	
	
	public boolean regist(String userName,String psw,String sex,String email,String mobile,String interest){
		//注册功能的实现，向数据库中插入用户数据
		//先判断有无重名的用户
	
		String sqlString="select * from users where uname=?";
		PreparedStatement psm=null;
		ResultSet rSet=null;
		User user=null;
			try {
				psm=connection.prepareStatement(sqlString);
				psm.setString(1, userName);
			rSet=psm.executeQuery();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if (rSet.next()==true) {//数据库中有重名者
					return false;
				}
				
				else {
					sqlString="select * from users where email=?";//检查email是否有重复的
					rSet=null;
					psm=null;
					try {
						psm=connection.prepareStatement(sqlString);
						psm.setString(1, email);
						rSet= psm.executeQuery();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					if (rSet.next()==true) {
						return false;
					}
					
					
				
				else {
					//插入数据库中值
					java.util.Date time=null;
					SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
					try {
					   time= sdf.parse(sdf.format(new Date()));

					} catch (ParseException e) {

					   e.printStackTrace();
					}
					//sqlString="insert into user(userName,psw,sex,email,grade,score,lasttime,registtime,mobile,interest) values("+userName+","+psw+","+email+","+"0,"+"0,"+time+","+time+","+mobile+","+interest+")";
					sqlString="insert into users(uname,upass,sex,email,grade,score,mobile,interest) values('"+userName+"','"+psw+"','"+sex+"','"+email+"',"+"'0',"+"'0','"+mobile+"','"+interest+"')";
					
					rSet=null;
					psm=null;
					try {
						psm=connection.prepareStatement(sqlString);
						psm.executeUpdate();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					
					return true;
				}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return true;
	}
	
}
