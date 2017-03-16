package com.DaDa.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DaDa.dao.WebDAO;
import com.DaDa.dao.impl.WebDBJdbcImpl;

import MyWeb.Web;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private WebDAO webDAO = new WebDBJdbcImpl();
	
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath = request.getServletPath();
		String resType = servletPath.substring(1);
		resType	= resType.substring(0, resType.length() - 3);
		Search(request,response,resType);
	}

	private void Search(HttpServletRequest request, HttpServletResponse response,String resType) {
		List<Web> webs = webDAO.getWebInContent(resType);
		request.setAttribute("webs", webs);
		try {
			request.getRequestDispatcher("/ContentSearchWeb.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
