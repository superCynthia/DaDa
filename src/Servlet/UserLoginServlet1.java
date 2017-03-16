package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DADA.User;
import Dao.DADA.UserDao;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet1")
public class UserLoginServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");
        // 前台得到用户输入
        UserDao userDao = new UserDao();
        User user = userDao.Login(userName, userPassword);
        // 调用方法判断用户是否存在
        
        if (user == null) {
            // 如果用户不存在，先保存之前输入的信息，重新登录
        	String message = "用户名或密码错误~！";
            request.setAttribute("message", message);
            request.setAttribute("userName", userName);
            request.setAttribute("userPassword",userPassword);
            request.getRequestDispatcher("/userlogin.jsp").forward(request,
                    response);
        } else {
            // 如果用户存在，将其赋值给session,跳转页面
            HttpSession session= request.getSession();
            session.setAttribute("currentUser", user);
            //如果单选框选中，则将用户数据保存到cookie
            if (request.getParameter("remember")=="0") {
            	Cookie username_Cookie =new Cookie("username",userName);
            	username_Cookie.setMaxAge(60*60*24*7);//设置有效期一周
            	response.addCookie(username_Cookie);
            	Cookie userPassword_Cookie=new Cookie("userPassword", userPassword);
            	userPassword_Cookie.setMaxAge(60*60*24*7);
            	response.addCookie(userPassword_Cookie);
			}
            
            request.getRequestDispatcher("mainweb.jsp").forward(request,
                    response);//跳到某个页面（根据具体情况修改）
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
