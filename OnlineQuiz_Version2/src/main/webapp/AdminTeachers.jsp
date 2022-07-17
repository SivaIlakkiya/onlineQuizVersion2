<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="web.service.AdminService,com.model.Teacher,web.service.DbConnection,java.util.*"%> 
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
        width:500px;
        }
</style>
<jsp:include page="adminNavbar.jsp"></jsp:include>
<jsp:include page="background.html"></jsp:include>
</head>
<body>
<div class="quiz-over">
<button type="button" class="btn btn-light" data-toggle="modal" data-target="#addteacherModal">+ Add Teachers</button><br><br>
</div>
<div class="modal fade" id="addteacherModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Add Teachers</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="${pageContext.request.contextPath}/add-teacher" method="POST">
       <div class="form-group">
                    <input type="text" class="form-control" name="tname" placeholder="Enter Name of Teacher" required="required">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" name="temail" placeholder="Enter Email" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="tpassword" placeholder="Enter Password" required="required">
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" name="tphonenumber" placeholder="Enter PhoneNumber" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Confirm</button>
                </div>
            </form>
      </div>
    </div>
  </div>
</div>
 <%  
List<Teacher> list=AdminService.getAllTeachers();  
request.setAttribute("list",list);  
 %>  
 <div class="table-display">
<table border="1" style="width:100%">  
<tr><th>Id</th><th>Name</th><th>Email</th>  
<th>Password</th><th>Phone Number</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getTeacherid()}</td><td>${u.getTeachername()}</td><td>${u.getEmail()}</td>  
<td>${u.getPassword()}</td><td>${u.getPhonenumber()}</td>  
<td><a href="editteacherform.jsp?id=${u.getTeacherid()}">Edit</a></td>  
<td><a href="deleteteacher.jsp?id=${u.getTeacherid()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
</div>
</body>
</html>