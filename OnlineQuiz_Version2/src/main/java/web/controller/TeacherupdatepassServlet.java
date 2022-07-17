package web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.TeacherService;


@WebServlet("/teacherupdate-password")
public class TeacherupdatepassServlet extends HttpServlet {
	private TeacherService teacherService;
	 public void init() {
	        this.teacherService = new TeacherService();
	    }
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("temail");
		String currentpassword=request.getParameter("tcurrpassword");
		String newpassword=request.getParameter("tnewpassword");
		int result=teacherService.updatepass(username, currentpassword,newpassword);
		 if(result >0)
		 {
			 
	            request.getRequestDispatcher("/login.jsp").forward(request, response);

	            
		 }
		 else
		 {
			 response.setContentType("text/html");
	            PrintWriter writer = response.getWriter();
	      request.getRequestDispatcher("/teacherDashboard.jsp").include(request, response);
	      writer.print(
                  "<div class='container'>" +
                          "<h2 style='color: red;'>Incorrect user name or password.</h2>" +
                          "</div>"
          );

          writer.close();
	     
	           // response.sendRedirect(request.getContextPath() + "/home");
	        }
	}

}
