package validate;

import javax.servlet.*;
import javax.servlet.http.*;

import DB.DBAccess;

import java.sql.*;
import java.io.*;

public class Validate extends HttpServlet {
	String uname = null;
	String upass = null;
	DBAccess dba;

	public void init() {
		dba = new DBAccess();
		dba.init();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		uname = request.getParameter("uname");
		String temppass = request.getParameter("upass");
		try {
			upass = dba.query1(uname).trim();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		if (!temppass.equals(upass)) {
			response.sendRedirect("error.html");
		} else {
			response.sendRedirect("newmainweb.html");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}