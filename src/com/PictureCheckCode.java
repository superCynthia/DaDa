package com;

import java.awt.*;  
import java.awt.geom.*;  
import java.awt.image.*;  
import java.io.*;  
import java.util.*;  
  
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
  
public class PictureCheckCode extends HttpServlet {  
  
    private static final long serialVersionUID = 1L;  
  
    public PictureCheckCode() {  
        super();  
    }  
  
    public void destroy() {  
        super.destroy();   
    }  
  
    public void init() throws ServletException {  
        super.init();  
    }  
    /*璇ユ柟娉曚富瑕佷綔鐢ㄦ槸鑾峰緱闅忔満鐢熸垚鐨勯鑹�*/   
    public Color getRandColor(int s,int e){  
        Random random=new Random ();  
        if(s>255) s=255;  
        if(e>255) e=255;  
        int r,g,b;  
        r=s+random.nextInt(e-s);    //闅忔満鐢熸垚RGB棰滆壊涓殑r鍊�  
        g=s+random.nextInt(e-s);    //闅忔満鐢熸垚RGB棰滆壊涓殑g鍊�  
        b=s+random.nextInt(e-s);    //闅忔満鐢熸垚RGB棰滆壊涓殑b鍊�  
        return new Color(r,g,b);  
    }  
  
    @Override  
    public void service(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        //璁剧疆涓嶇紦瀛樺浘鐗�  
        response.setHeader("Pragma", "No-cache");  
        response.setHeader("Cache-Control", "No-cache");  
        response.setDateHeader("Expires", 0);  
        //鎸囧畾鐢熸垚鐨勫搷搴斿浘鐗�,涓�瀹氫笉鑳界己灏戣繖鍙ヨ瘽,鍚﹀垯閿欒.  
        response.setContentType("image/jpeg");  
        int width=86,height=22;     //鎸囧畾鐢熸垚楠岃瘉鐮佺殑瀹藉害鍜岄珮搴�  
        BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB); //鍒涘缓BufferedImage瀵硅薄,鍏朵綔鐢ㄧ浉褰撲簬涓�鍥剧墖  
        Graphics g=image.getGraphics();     //鍒涘缓Graphics瀵硅薄,鍏朵綔鐢ㄧ浉褰撲簬鐢荤瑪  
        Graphics2D g2d=(Graphics2D)g;       //鍒涘缓Grapchics2D瀵硅薄  
        Random random=new Random();  
        Font mfont=new Font("妤蜂綋",Font.BOLD,16); //瀹氫箟瀛椾綋鏍峰紡  
        g.setColor(getRandColor(200,250));  
        g.fillRect(0, 0, width, height);    //缁樺埗鑳屾櫙  
        g.setFont(mfont);                   //璁剧疆瀛椾綋  
        g.setColor(getRandColor(180,200));  
          
        //缁樺埗100鏉￠鑹插拰浣嶇疆鍏ㄩ儴涓洪殢鏈轰骇鐢熺殑绾挎潯,璇ョ嚎鏉′负2f  
        for(int i=0;i<100;i++){  
            int x=random.nextInt(width-1);  
            int y=random.nextInt(height-1);  
            int x1=random.nextInt(6)+1;  
            int y1=random.nextInt(12)+1;  
            BasicStroke bs=new BasicStroke(2f,BasicStroke.CAP_BUTT,BasicStroke.JOIN_BEVEL); //瀹氬埗绾挎潯鏍峰紡  
            Line2D line=new Line2D.Double(x,y,x+x1,y+y1);  
            g2d.setStroke(bs);  
            g2d.draw(line);     //缁樺埗鐩寸嚎  
        }  
        //杈撳嚭鐢辫嫳鏂囷紝鏁板瓧锛屽拰涓枃闅忔満缁勬垚鐨勯獙璇佹枃瀛楋紝鍏蜂綋鐨勭粍鍚堟柟寮忔牴鎹敓鎴愰殢鏈烘暟纭畾銆�  
        String sRand="";  
        String ctmp="";  
        int itmp=0;  
        //鍒跺畾杈撳嚭鐨勯獙璇佺爜涓哄洓浣�  
        for(int i=0;i<4;i++){  
            switch(random.nextInt(3)){  
                case 1:     //鐢熸垚A-Z鐨勫瓧姣�  
                     itmp=random.nextInt(26)+65;  
                     ctmp=String.valueOf((char)itmp);  
                     break;  
                case 2:     //鐢熸垚姹夊瓧  
                     String[] rBase={"0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"};   
                     //鐢熸垚绗竴浣嶅尯鐮�  
                     int r1=random.nextInt(3)+11;  
                     String str_r1=rBase[r1];  
                     //鐢熸垚绗簩浣嶅尯鐮�  
                     int r2;  
                     if(r1==13){  
                         r2=random.nextInt(7);     
                     }else{  
                         r2=random.nextInt(16);  
                     }  
                     String str_r2=rBase[r2];  
                     //鐢熸垚绗竴浣嶄綅鐮�  
                     int r3=random.nextInt(6)+10;  
                     String str_r3=rBase[r3];  
                     //鐢熸垚绗簩浣嶄綅鐮�  
                     int r4;  
                     if(r3==10){  
                         r4=random.nextInt(15)+1;  
                     }else if(r3==15){  
                         r4=random.nextInt(15);  
                     }else{  
                         r4=random.nextInt(16);  
                     }  
                     String str_r4=rBase[r4];  
                     //灏嗙敓鎴愮殑鏈哄唴鐮佽浆鎹负姹夊瓧  
                     byte[] bytes=new byte[2];  
                     //灏嗙敓鎴愮殑鍖虹爜淇濆瓨鍒板瓧鑺傛暟缁勭殑绗竴涓厓绱犱腑  
                     String str_12=str_r1+str_r2;  
                     int tempLow=Integer.parseInt(str_12, 16);  
                     bytes[0]=(byte) tempLow;  
                     //灏嗙敓鎴愮殑浣嶇爜淇濆瓨鍒板瓧鑺傛暟缁勭殑绗簩涓厓绱犱腑  
                     String str_34=str_r3+str_r4;  
                     int tempHigh=Integer.parseInt(str_34, 16);  
                     bytes[1]=(byte)tempHigh;  
                     ctmp=new String(bytes);  
                     break;  
                default:  
                     itmp=random.nextInt(10)+48;  
                     ctmp=String.valueOf((char)itmp);  
                     break;  
            }  
            sRand+=ctmp;  
            Color color=new Color(20+random.nextInt(110),20+random.nextInt(110),random.nextInt(110));  
            g.setColor(color);  
            //灏嗙敓鎴愮殑闅忔満鏁拌繘琛岄殢鏈虹缉鏀惧苟鏃嬭浆鍒跺畾瑙掑害 PS.寤鸿涓嶈瀵规枃瀛楄繘琛岀缉鏀句笌鏃嬭浆,鍥犱负杩欐牱鍥剧墖鍙兘涓嶆甯告樉绀�  
            /*灏嗘枃瀛楁棆杞埗瀹氳搴�*/  
            Graphics2D g2d_word=(Graphics2D)g;  
            AffineTransform trans=new AffineTransform();  
            trans.rotate((45)*3.14/180,15*i+8,7);  
            /*缂╂斁鏂囧瓧*/  
            float scaleSize=random.nextFloat()+0.8f;  
            if(scaleSize>1f) scaleSize=1f;  
            trans.scale(scaleSize, scaleSize);  
            g2d_word.setTransform(trans);  
            g.drawString(ctmp, 15*i+18, 14);  
        }  
        HttpSession session=request.getSession(true);  
        session.setAttribute("randCheckCode", sRand);  
        g.dispose();    //閲婃斁g鎵�鍗犵敤鐨勭郴缁熻祫婧�  
        ImageIO.write(image,"JPEG",response.getOutputStream()); //杈撳嚭鍥剧墖  
    }  
}  