package web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.service.TeacherService;

/**
 * Servlet implementation class TeacherloginServlet
 */
@WebServlet("/teacher-login")
public class TeacherloginServlet extends HttpServlet {
	private TeacherService teacherService;
	 public void init() {
	        this.teacherService = new TeacherService();
	    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("teacherusername");
		String password=request.getParameter("teacherpassword");
		 if (username!=null && password!=null && teacherService.checkCredentials(username, password)) {
	            // get the old session
	            HttpSession oldSession = request.getSession(false);
	            if (oldSession != null) {
	                oldSession.invalidate();
	            }

	            // generate a new Session
	            HttpSession newSession = request.getSession(true);
	            newSession.setAttribute("teacherusername", username);
	            newSession.setAttribute("teacherpassword", password);

	            // setting session to expire in 10 minutes
	            newSession.setMaxInactiveInterval(10 * 60);
	            request.getRequestDispatcher("/teacherDashboard.jsp").forward(request, response);
	           // response.sendRedirect(request.getContextPath() + "/home");
	        } else {
	            response.setContentType("text/html");
	            PrintWriter writer = response.getWriter();
	            request.getRequestDispatcher("/login.jsp").include(request, response);

	            writer.print(
	                    "<div class='container'>" +
	                            "<h2 style='color: red;'>Incorrect user name or password.</h2>" +
	                            "</div>"
	            );

	            writer.close();
	        }
		 
	}

	}


