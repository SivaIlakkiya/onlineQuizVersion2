<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="web.service.AdminService,com.model.Teacher,web.service.DbConnection,java.util.*"%>
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
Teacher u=AdminService.getTeacherById(Integer.parseInt(id));  
%> 
<div class="quiz-over">
<h1>Update Teachers Details here..</h1>
 <form action="${pageContext.request.contextPath}/update-teacher" method="POST">
 <div class="form-group">
 <input type="hidden" name="etid" value="<%=u.getTeacherid() %>"/> 
 </div> 
       <div class="form-group">
                    <input type="text" class="form-control" name="etname" value="<%=u.getTeachername() %>" required="required">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" name="etemail" value="<%=u.getEmail() %>" >
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="etpassword" value="<%=u.getPassword() %>" required="required">
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" name="etphonenumber" value="<%=u.getPhonenumber() %>" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Confirm</button>
                </div>
            </form>
</div>            
</body>
</html>