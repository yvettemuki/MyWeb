package com.test.demo;

import java.io.IOException;  
import java.sql.*; //导入数据库处理所有库  
import javax.servlet.ServletConfig;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.swing.JOptionPane;  
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TimePrint extends HttpServlet {
	
	private Connection conn=null;     //定义数据库连接对象  
    private String driverName=null; //数据库驱动器  
    private String url=null;        //数据库地址URL  
      
    //初始化方法，取得数据库连接对象  
    public void init(ServletConfig config) throws ServletException  
    {  
        super.init(config);  
        driverName=config.getInitParameter("driverName");  
        url=config.getInitParameter("url");  
          
        try {  
            Class.forName(driverName);  
            conn=DriverManager.getConnection(url);  
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
        //判断评论内容为空 
        if(name==null||name.trim().length()==0) {  
            response.sendRedirect("MyWeb.jsp");  
            JOptionPane.showMessageDialog(null, "name or content can't be empty!");  
        }  
   
        //查询数据库和跳转到登录主界面  
        try {  
            //查询数据库操作  
              
            //跳转到主界面  
            response.sendRedirect("index.jsp");  
        } catch(Exception e) {  
            System.out.println("错误："+e.getMessage());  
            response.sendRedirect("MyWeb.jsp");  
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
