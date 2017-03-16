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
 * Servlet implementation class changeMessageServlet
 */
@WebServlet("/changeMessageServlet")
public class changeMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeMessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//首先获取得到的所有数据
				HttpSession session=request.getSession();
				User user=(User) session.getAttribute("currentUser");
				String userName= user.getUserName();//通过session获取用户名
				response.setContentType("text/html;charset=gb2312");
				  request.setCharacterEncoding("utf-8");
				  response.setCharacterEncoding("utf-8");

				//然后获得提交的表单数据
				String emailString= request.getParameter("email");
				String mobile=request.getParameter("mobile");
				String sexString=request.getParameter("sex");
				String interest=request.getParameter("interest");
				
				//通过user类的set方法一个个修改数据
				user.setEmail(emailString);
				user.setInterest(interest);
				user.setMobileString(mobile);
				user.setSexString(sexString);
				
				request.getRequestDispatcher("/mainweb.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
