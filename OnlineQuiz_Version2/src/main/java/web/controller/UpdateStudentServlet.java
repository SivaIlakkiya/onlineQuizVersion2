package web.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.TeacherService;

/**
 * Servlet implementation class UpdateStudentServlet
 */
@WebServlet("/update-student")
public class UpdateStudentServlet extends HttpServlet {
	
	private TeacherService teacherService;
	public void init() {
		this.teacherService=new TeacherService();
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int epid=Integer.parseInt(request.getParameter("epid"));
		String epname=request.getParameter("epname");
		String epemail=request.getParameter("epemail");
		int epage=Integer.parseInt(request.getParameter("epage"));
		String eppass=request.getParameter("eppass");
		int r=teacherService.updateStudent(epid, epname, epemail, epage, eppass);
		if(r>0)
		{
			request.getRequestDispatcher("/adminstudents.jsp").include(request, response);
		}
		else
		{
			request.getRequestDispatcher("/adminstudents.jsp").include(request, response);
		}
	}

}
