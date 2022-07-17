<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="web.service.TeacherService,com.model.Student,web.service.DbConnection,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
.quiz-over {
            position:absolute;
        top:30%;
        left:30%;
        color: white;
        }
</style>
<jsp:include page="adminNavbar.jsp"></jsp:include>
<jsp:include page="background.html"></jsp:include>
</head>
<body>
<%  
String id=request.getParameter("id");  
Student u=TeacherService.getStudentById(Integer.parseInt(id));  
%> 
<div class="quiz-over">
<h1>Update Students Details here..</h1>
 <form action="${pageContext.request.contextPath}/update-student" method="POST">
 <div class="form-group">
 <input type="hidden" name="epid" value="<%=u.getStudentid() %>"/> 
 </div> 
       <div class="form-group">
                    <input type="text" class="form-control" name="epname" value="<%=u.getStudentname() %>" required="required">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" name="epemail" value="<%=u.getEmail() %>" >
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" name="epage" value="<%=u.getAge() %>" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="eppass" value="<%=u.getPassword() %>" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Confirm</button>
                </div>
            </form>
</div>     
</body>
</html>