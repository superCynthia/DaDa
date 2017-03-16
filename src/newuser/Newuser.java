package newuser;


	import javax.servlet.*;
	import javax.servlet.http.*;

	import DB.DBAccess;

	import java.sql.*;
	import java.io.*;
	public class Newuser extends HttpServlet{
		String uname=null;
		String upass=null;
		DBAccess dba;
		public void init(){
			dba=new DBAccess();
			dba.init();
		}
		public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
			String tempuname=request.getParameter("uname");
			upass=request.getParameter("upass");
			try{
				uname=dba.query2(tempuname).trim();
				
			}catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
			if(uname!=null)
			{
				response.sendRedirect("newusererror.html");
				uname=null;
			}
			else{
				try{
					dba.insert(tempuname, upass);
					response.sendRedirect("login.html");
				}
				catch(SQLException e){
					System.out.println(e.getMessage());
				}
			}
		}
		public void dbPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
			doGet(request,response);
		}
	}



