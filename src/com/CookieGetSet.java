package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CookieGetSet")
public class CookieGetSet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("delete")!=null) {
			delelte(request, response);
		}else {
			String name=request.getParameter("name");
			String  age=request.getParameter("age");
			Cookie cookie=new Cookie(name,age);
			response.addCookie(cookie);
			//hjbb
			
		}
		response.sendRedirect("index.jsp");
	}
	public void delelte(HttpServletRequest req,HttpServletResponse res){
		Cookie cookiesCookie[]= req.getCookies();
		for(Integer i=0;i<req.getCookies().length;i++){
			if(req.getParameter("delete").equals(i.toString())){
				cookiesCookie[i].setMaxAge(0);
				res.addCookie(cookiesCookie[i]);
				///fggd
			}
		}
	}
}
