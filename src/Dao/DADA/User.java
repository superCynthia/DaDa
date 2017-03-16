package Dao.DADA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DB.DBConnection;

public class User {
	Connection connection=null;
	String userName;
	String psw;
	String sexString;
	String email;
	String grade;//用户等级
	String scoreString;//用户积分
	java.util.Date lastTime;//上次登录时间
	java.util.Date regisTimeDate;//注册时间
	String mobileString;
	String interest;
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		connection= DBConnection.getConnection();//建立连接
		this.interest = interest;//修改外部值
		userName=this.getUserName();//获取用户名作为键值
		
		String sqlString="update users set interest=? where uname=?";
		PreparedStatement psm=null;
		
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, interest);
			psm.setString(2, userName);
			
			psm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
	 	
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		connection= DBConnection.getConnection();//建立连接
		this.psw = psw;//修改外部值
		userName=this.getUserName();//获取用户名作为键值
		
		String sqlString="update users set upass=? where uname=?";
		PreparedStatement psm=null;
		
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, psw);
			psm.setString(2, userName);
			
			psm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
	}
	public String getSexString() {
		return sexString;
	}
	public void setSexString(String sexString) {
		connection= DBConnection.getConnection();//建立连接
		this.sexString = sexString;//修改外部值
		userName=this.getUserName();//获取用户名作为键值
		
		String sqlString="update users set sex=? where uname=?";
		PreparedStatement psm=null;
		
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, sexString);
			psm.setString(2, userName);
			
			psm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		connection= DBConnection.getConnection();//建立连接
		this.email = email;//修改外部值
		userName=this.getUserName();//获取用户名作为键值
		
		String sqlString="update users set email=? where uname=?";
		PreparedStatement psm=null;
		
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, email);
			psm.setString(2, userName);
			
			psm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		connection= DBConnection.getConnection();//建立连接
		this.grade = grade;//修改外部值
		userName=this.getUserName();//获取用户名作为键值
		
		String sqlString="update users set grade=? where uname=?";
		PreparedStatement psm=null;
		
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, grade);
			psm.setString(2, userName);
			
			psm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
	public String getScoreString() {
		return scoreString;
	}
	public void setScoreString(String scoreString) {
		connection= DBConnection.getConnection();//建立连接
		this.scoreString = scoreString;//修改外部值
		userName=this.getUserName();//获取用户名作为键值
		
		String sqlString="update users set score=? where uname=?";
		PreparedStatement psm=null;
		
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, scoreString);
			psm.setString(2, userName);
			
			psm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
	public java.util.Date getLastTime() {
		return lastTime;
	}
	public void setLastTime(java.util.Date time) {
		this.lastTime=time;
	}
	public java.util.Date getRegisTimeDate() {
		return regisTimeDate;
	}
	public void setRegisTimeDate(java.util.Date time) {
		this.regisTimeDate = time;
	}
	public String getMobileString() {
		return mobileString;
	}
	public void setMobileString(String mobileString) {
		connection= DBConnection.getConnection();//建立连接
		this.mobileString = mobileString;//修改外部值
		userName=this.getUserName();//获取用户名作为键值
		
		String sqlString="update users set mobile=? where uname=?";
		PreparedStatement psm=null;
		
		try {
			psm=connection.prepareStatement(sqlString);
			psm.setString(1, mobileString);
			psm.setString(2, userName);
			
			psm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
}
