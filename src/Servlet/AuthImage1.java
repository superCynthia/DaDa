package Servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Iterator;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;
/**
 * Servlet implementation class AuthImage
 */
@WebServlet("/AuthImage1")
public class AuthImage1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CONTENT_TYPE_STRING="text/html;charset=gb2312";//������ĸ������ֺŴ�С
	private Font mFont=new Font("Times New Roman",Font.PLAIN,17);//���������ɫ
	Color getRandColor(int fc,int bc){
		Random random=new Random();
		if (fc>255) {
			fc=255;
		}
		if (bc>255) {
			bc=255;
		}
		int r=fc+random.nextInt(bc-fc);
		int g=fc+random.nextInt(bc-fc);
		int b=fc+random.nextInt(bc-fc);
		return new Color(r,g,b);
	}
	//��������ַ�
	private String getRandChar() {
		int rand=(int)Math.round(Math.random()*2);
		long itmp=0;
		char ctmp='\u0000';
		switch (rand) {
		case 1:
			itmp=Math.round(Math.random()*25+65);
			ctmp=(char)itmp;
			return String.valueOf(ctmp);
		case 2:
			itmp=Math.round(Math.random()*25+97);
			ctmp=(char)itmp;
			return String.valueOf(ctmp);
		default:
			itmp=Math.round(Math.random()*9);
			ctmp=(char)itmp;
			return String.valueOf(itmp);
		}
	}
    public AuthImage1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache_Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");
		int width=80,height=18;
		//����һ����ͼƬ
		BufferedImage image=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		//��ͼƬ�л�������
		Graphics graphics=image.getGraphics();
		Random random=new Random();
		graphics.setColor(getRandColor(200, 250));
		graphics.fillRect(1, 1, width-1, height-1);
		graphics.setColor(new Color(102,102,102));
		graphics.drawRect(0, 0, width-1, height-1);
		graphics.setFont(mFont);
		//���������������ͼƬ��������������
		graphics.setColor(getRandColor(160, 200));
		for (int i = 0; i < 155; i++) {
			int x=random.nextInt(width-1);
			int y=random.nextInt(height-1);
			int x1=random.nextInt(6)+1;
			int y1=random.nextInt(12)+1;
			graphics.drawLine(x, y,x+x1,y+y1);
		}
		//����һ�����������
		for (int i = 0; i < 70; i++) {
			int x=random.nextInt(width-1);
			int y=random.nextInt(height-1);
			int x1=random.nextInt(12)+1;
			int y1=random.nextInt(6)+1;
			graphics.drawLine(x, y,x-x1,y-y1);
		}
		//����������������������ת������ĸ
		String sRand="";
		for (int i = 0; i < 4 ;i++) {
			//ȡ��һ���ַ�
			String tmpString=getRandChar();
			sRand+=tmpString;
			//��ϵͳ���ɵ�����ַ���ӵ�ͼ����֤��ͼƬ��
			graphics.setColor(
					new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110))
					);
			graphics.drawString(String.valueOf(tmpString),15*i+10, 16);
		}
			//graphics.drawString(sRand, 15+10, 16);
			//ȡ���û�session
			HttpSession session=request.getSession(true);
			//����֤�뱣����session��
			session.setAttribute("ValidateCode",sRand);
			graphics.dispose();
			//���ͼ����֤��
			ImageIO.write(image, "JPEG", response.getOutputStream());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
