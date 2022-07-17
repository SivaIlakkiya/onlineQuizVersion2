<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="web.service.TeacherService,com.model.Student,web.service.DbConnection,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
.quiz-over {
        position:absolute;
        top:50%;
        left:50%;
        color: white;
        }
</style>
<jsp:include page="adminNavbar.jsp"></jsp:include>
<jsp:include page="background.html"></jsp:include>
</head>
<body>
<%  
String id=request.getParameter("id");  
int s=TeacherService.deleteStudent(Integer.parseInt(id)); 
%> 
<div class="quiz-text">
<form action="adminstudents.jsp">
<h1>Deleted Succussfully</h1>
<button type="submit">Ok</button>
</form>
</div>
</body>
</html>