<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="web.service.AdminService,com.model.Student,web.service.DbConnection,java.util.*"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
.quiz-over {
            text-align: center;
            position: absolute;
            top: 25%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }
        .table-display{
        position:absolute;
        top:30%;
        color: white;
        }
        th,td{
        width:400px;
        }
</style>
<jsp:include page="adminNavbar.jsp"></jsp:include>
<jsp:include page="background.html"></jsp:include>
</head>
<body>
 <%  
List<Student> list=AdminService.getAllStudents();  
request.setAttribute("list",list);  
 %>  
 <div class="table-display">
 <h1>List of Students are Here......</h1><br><br>
<table border="1" style="width:100%">  
<tr><th>Id</th><th>Name</th><th>Email</th>  
<th>Age</th><th>Password</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getStudentid()}</td><td>${u.getStudentname()}</td><td>${u.getEmail()}</td>  
<td>${u.getAge()}</td><td>${u.getPassword()}</td> 
<td><a href="editstudentform.jsp?id=${u.getStudentid()}">Edit</a></td>  
<td><a href="deletestudent.jsp?id=${u.getStudentid()}">Delete</a></td></tr>   
</c:forEach>  
</table>  
</div>
</body>
</html>