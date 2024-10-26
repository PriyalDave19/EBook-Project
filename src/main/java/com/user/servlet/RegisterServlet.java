package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.getWriter().write("<html><body><h1>GET method is not supported. Use POST.</h1></body></html>");
    }
	
	@Override  
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			//System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			
			User us =new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			if(check!=null) 
			{
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
				boolean f = dao.userRegister(us);
				
				if(f) 
				{
					System.out.println("User Register Success..");
				}else {
					System.out.println("Something wrong on server..");

				}	
			}else {
				System.out.println("Please Check Agree & Terms Condition");

			}
			
			
			UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
			boolean f = dao.userRegister(us);
			
			if(f) 
			{
				System.out.println("User Register Success..");
			}else {
				System.out.println("Something wrong on server..");

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
