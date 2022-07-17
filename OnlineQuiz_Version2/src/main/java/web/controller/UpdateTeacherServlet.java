package web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.AdminService;

/**
 * Servlet implementation class UpdateTeacherServlet
 */
@WebServlet("/update-teacher")
public class UpdateTeacherServlet extends HttpServlet {
	private AdminService adminService;
    public void init() {
        this.adminService = new AdminService();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int etid=Integer.parseInt(request.getParameter("etid"));
		String etname=request.getParameter("etname");
		String etemail=request.getParameter("etemail");
		String etpass=request.getParameter("etpassword");
		String etphone=request.getParameter("etphonenumber");
		int r=adminService.updateTeacher(etid, etname, etemail, etpass, etphone);
		if(r>0)
		{
			request.getRequestDispatcher("/AdminTeachers.jsp").include(request, response);
		}
		else
		{
			request.getRequestDispatcher("/AdminTeachers.jsp").include(request, response);
		}
	}
	}
