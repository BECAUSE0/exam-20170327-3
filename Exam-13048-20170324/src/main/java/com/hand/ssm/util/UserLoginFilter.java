package com.hand.ssm.util;

/**
 * 
 */

import java.io.IOException; 

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
public class UserLoginFilter implements Filter {


    /**   
     * 配置允许的角色   
     */   
    //private String allowRole = null;    
   
    /**   
     * 重定向的URL   
     */   
    private String redirectURl = null;    
   
    public void init(FilterConfig filterConfig) throws ServletException {    
       
    	//得到允许的角色,这个参数是由web.xml里的allowRole所指定    
        //allowRole = filterConfig.getInitParameter("allowRole");    
        
        //指定要重定向的页面    
        redirectURl = "/Exam-13048-20170324/views/login.jsp?login=login";    
    }    
   
    /**   
     * 在过滤器中实现权限控制   
     */   
    public void doFilter(ServletRequest sRequest, ServletResponse sResponse,    
            FilterChain filterChain) throws IOException, ServletException {    
        
    	HttpServletRequest request = (HttpServletRequest) sRequest;    
        HttpServletResponse response = (HttpServletResponse) sResponse;    
        HttpSession session = request.getSession();    
        
        String p = request.getParameter("login");
        
        if(session.getAttribute("logon") == null) {
        	if(p!=null&&p.equals("login")) {
        		filterChain.doFilter(sRequest, sResponse);
        	} else {
            	response.sendRedirect(redirectURl);   
        	}
        } else {
        	filterChain.doFilter(sRequest, sResponse);
        }
    }    
   
    public void destroy() {    
    }  
}
