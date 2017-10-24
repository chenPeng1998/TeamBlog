import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//过滤器
public class CommentFilter implements Filter{
    private FilterConfig config;
    public CommentFilter() {
        System.out.println("构造器");
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("init 只执行一次");
        config=filterConfig;
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("doFilter");
        HttpServletRequest request=(HttpServletRequest)servletRequest;
        HttpServletResponse response=(HttpServletResponse)servletResponse;
        //读评论内容
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        String content=request.getParameter("comment");
        //读取初始化参数
        String ill=config.getInitParameter("illegal2");
        if(content.indexOf(ill)!=-1){
        out.println("有名杆子 不合法");

        }else {
            filterChain.doFilter(servletRequest,servletResponse);


        }
        System.out.println("dofiter end");
    }

    public void destroy() {
        System.out.println("destroy");
    }

    public static void main(String args[]){

    }
}
