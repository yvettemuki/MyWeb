package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class ReviewServlet extends HttpServlet {

	private Connection conn=null;     //定义数据库连接对象  
    private String driverName=null; //数据库驱动器  
    private String url=null;        //数据库地址URL  
      
    //初始化方法，取得数据库连接对象  
    public void init(ServletConfig config) throws ServletException  
    {  
        super.init(config);  
        driverName=config.getInitParameter("driverName");  
        url=config.getInitParameter("url");  
        String username = "root";
        String password = "LIAOshuQI123";
        try {  
            Class.forName(driverName);  //相当于加载驱动
            conn=DriverManager.getConnection(url, username, password);  
        
        } catch(Exception e) {  
            System.out.println("取得数据库连接错误："+e.getMessage());  
        }  
    }  
      
    //处理GET请求方法  
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException  
    {  
        //取得用户注册表单提交的数据  
        String name=request.getParameter("name");  
        String content=request.getParameter("content");  
        int count = 0;
        //判断评论内容为空 
        if(name==null||name.trim().length()==0) {   
            JOptionPane.showMessageDialog(null, "name or content can't be empty!");  
            response.sendRedirect("/HelloWorld/error.jsp"); 
        }  
   
        //查询数据库和跳转到登录主界面  
        try {  
            //查询数据库操作  
        	Statement stmt = conn.createStatement();
        	String sql = "insert into review(content,status,name) values('"+content+"',"+1+",'"+name+"')";
        	count = stmt.executeUpdate(sql);
            //如果有数据，rs.next()返回true
            if(count>0){
                System.out.println("success");
            }
         
            response.sendRedirect("/HelloWorld/MyWeb.jsp");  
        } catch(Exception e) {  
            System.out.println("错误："+e.getMessage());  
            response.sendRedirect("/HelloWorld/index.jsp");  
        }  
    }  
      
    //处理POST请求方法  
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException   
    {  
        doGet(request,response);  
    }  
      
    //销毁方法  
    public void destroy() {  
        super.destroy();  
        try {  
            conn.close();  
        }catch(Exception e) {  
            System.out.println("关闭数据库错误："+e.getMessage());  
        }  
    }         


}
