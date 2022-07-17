package web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.service.AdminService;


@WebServlet("/update-password")
public class AdminupdateServlet extends HttpServlet {
	
	private AdminService adminService;
    public void init() {
        this.adminService = new AdminService();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("adminemail");
		String currentpassword=request.getParameter("currpassword");
		String newpassword=request.getParameter("newpassword");
		
		 int result=adminService.update(username, currentpassword,newpassword);
		 if(result >0)
		 {
			 response.setContentType("text/html");
	            PrintWriter writer = response.getWriter();
	            request.getRequestDispatcher("/login.jsp").forward(request, response);

	            writer.print(
	                    "<div class='container'>" +
	                            "<h2 style='color: red;'>Incorrect user name or password.</h2>" +
	                            "</div>"
	            );

	            writer.close();
		 }
		 else
		 {
	      request.getRequestDispatcher("/adminDashboard.jsp").include(request, response);
	     
	           // response.sendRedirect(request.getContextPath() + "/home");
	        }
	}
}

