package web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.AdminService;


@WebServlet("/add-teacher")
public class AdminAddTeacher extends HttpServlet {
	
	private AdminService adminService;
    public void init() {
        this.adminService = new AdminService();
    }
       
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tname=request.getParameter("tname");
		String temail=request.getParameter("temail");
		String tpass=request.getParameter("tpassword");
		String tphone=request.getParameter("tphonenumber");
		
	    int result=adminService.insertTeacher(tname,temail,tpass,tphone);
	    if(result >0)
		 {
			 response.setContentType("text/html");
	            PrintWriter writer = response.getWriter();
	            request.getRequestDispatcher("/AdminTeachers.jsp").include(request, response);
		 }
		 else
		 {
			 response.setContentType("text/html");
	            PrintWriter writer = response.getWriter();

	      request.getRequestDispatcher("/AdminTeachers.jsp").include(request, response);
	     
	      writer.print(
                  "<div class='container'>" +
                          "<h2 style='color: red;'>Not Succuessfull..</h2>" +
                          "</div>"
          );

          writer.close();
	        }
	}

}
