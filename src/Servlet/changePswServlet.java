package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DADA.User;

/**
 * Servlet implementation class changePswServlet
 */
@WebServlet("/changePswServlet")
public class changePswServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changePswServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("currentUser");
		//先获取密码，比对是否正确，如果错误，退回
		String correctPsw= user.getPsw();
		String oldPsw=request.getParameter("oldpassword");
		if (correctPsw.equals(oldPsw)==false) {
			request.setAttribute("errorMessage", "密码输入错误！");
			request.getRequestDispatcher("changePsw.jsp").forward(request, response);
			
		}
		else {
			String newPassword= request.getParameter("password");
			user.setPsw(newPassword);	
			request.getRequestDispatcher("/mainweb.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
