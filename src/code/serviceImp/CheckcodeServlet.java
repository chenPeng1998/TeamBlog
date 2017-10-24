package serviceImp;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

public class CheckcodeServlet extends HttpServlet  {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 绘图
         */
        //创建画布
        BufferedImage image=new BufferedImage(80,30,BufferedImage.TYPE_INT_RGB);
        //获得画笔
        Graphics g=image.getGraphics();
        //给画笔设置颜色
        g.setColor(new Color(92, 255, 231));
        //给画布设置背景颜色
        Random random=new Random();
        g.fillRect(0,0,80,30);
        g.setFont(new Font(null,Font.ITALIC,24));
        //换个颜色
        g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
        //绘图 number
        int a = (int)(Math.random()*(9999-1000+1))+1000;//产生1000-9999的随机数
        //将a绑定到session上
        HttpSession session=req.getSession();
        session.setAttribute("number",a);
        String number= a+"";
        g.drawString(number,5,25);
        for(int i=0;i<random.nextInt(50);i++) {
            g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
            g.drawLine(random.nextInt(80), random.nextInt(30), random.nextInt(80)
           ,random.nextInt(30) );
            g.draw3DRect(random.nextInt(80), random.nextInt(30), random.nextInt(80), random.nextInt(30), false);
        }
        /**
         * 将图片压缩输出()
         */
        //设置类型
        resp.setContentType("image/jpeg");
        //输出图片流
        OutputStream os=
                resp.getOutputStream();
        //压缩图片 并输出
        ImageIO.write(image,"jpeg",os);
        os.close();

    }
}
