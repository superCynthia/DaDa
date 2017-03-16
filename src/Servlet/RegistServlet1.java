package Servlet;

import java.io.IOException;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.DATA_CONVERSION;

import Dao.DADA.User;
import Dao.DADA.UserDao;

/**
 * Servlet implementation class RegistServlet
 */
@WebServlet("/RegistServlet1")
public class RegistServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=gb2312");
		  request.setCharacterEncoding("utf-8");
		  response.setCharacterEncoding("utf-8");

		//首先获取用户传入的数据
		String userNameString=request.getParameter("username").toString();
		userNameString= new String(userNameString.getBytes("ISO-8859-1"), "gb2312");
		String emailString=request.getParameter("email").toString();
		emailString= new String(emailString.getBytes("ISO-8859-1"), "gb2312"); 
		String passwordString=request.getParameter("password").toString();
		passwordString= new String(passwordString.getBytes("ISO-8859-1"), "gb2312"); 
		String mobile=request.getParameter("mobile").toString();
		mobile= new String(mobile.getBytes("ISO-8859-1"), "gb2312"); 
		String sexString=request.getParameter("sex").toString();
		sexString= new String(sexString.getBytes("ISO-8859-1"), "gb2312"); 
		String interest=request.getParameter("interest").toString();
		interest= new String(interest.getBytes("ISO-8859-1"), "gb2312"); 
		String repassword=request.getParameter("repassword").toString();
		repassword= new String(repassword.getBytes("ISO-8859-1"), "gb2312"); 
		String errorMessage;
		String validateCode=request.getSession().getAttribute("ValidateCode").toString();//实际验证码
		String userValidateCodeString=request.getParameter("checkcode").toString();//用户输入验证码
		//将用户输入数据保存，便于回传
		{
		request.setAttribute("userName", userNameString);
		request.setAttribute("email", emailString);
		request.setAttribute("password", passwordString);
		request.setAttribute("mobile", mobile);
		request.setAttribute("sex", sexString);
		request.setAttribute("interest", interest);
		request.setAttribute("repassword", repassword);
		}
		
		if (validateCode.equals(userValidateCodeString)==false) {//先检查验证码
			errorMessage="验证码错误";
			request.setAttribute("errorMessage", errorMessage);
			
			request.getRequestDispatcher("regist.jsp").forward(request, response);
			return;
		}
		//调用dao层，检查email和用户名是否重复
		UserDao userDao=new UserDao();
		
		if (!userDao.checkUserName(userNameString)) {
			errorMessage="用户名已被注册！";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("regist.jsp").forward(request, response);
		}
		else if(!userDao.checkEmail(emailString)){
			errorMessage="邮箱已被注册！";
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("regist.jsp").forward(request, response);
		}
		else {//注册成功,插入数据库数据,然后向session传值，跳转页面
			
			userDao.regist(userNameString, passwordString, sexString, emailString, mobile, interest);//向数据库中插入
			User user=new User();
			user.setEmail(emailString);
			user.setGrade("1");
			user.setInterest(interest);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

			java.util.Date time=null;
			try {
			   time= sdf.parse(sdf.format(new Date()));

			} catch (ParseException e) {

			   e.printStackTrace();
			}
			user.setLastTime(time);
			user.setMobileString(mobile);
			user.setPsw(passwordString);
			user.setRegisTimeDate(time);
			user.setScoreString("0");
			user.setSexString(sexString);
			user.setUserName(userNameString);
			request.getSession().setAttribute("currentUser", user);
			
			request.getRequestDispatcher("mainweb.jsp").forward(request, response);
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
