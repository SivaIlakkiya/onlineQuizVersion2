<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
 .quiz-text {
            text-align: center;
           
            
            color: white;
        }
   button {
   height:40px;
   width:200px;
   }     
</style>
<jsp:include page="navbar.jsp"></jsp:include>
<jsp:include page="background.html"></jsp:include>
</head>
<body>
<div class="quiz-text">
<h3>Select Your Role and Continue Logging In.....</h3><br>
<p>
  <button class="btn btn-light" type="button" data-toggle="collapse" data-target="#collapseAdmin" aria-expanded="false" aria-controls="collapseExample">
    Admin
  </button>
  <button class="btn btn-light" type="button" data-toggle="collapse" data-target="#collapseTeacher" aria-expanded="false" aria-controls="collapseExample">
    Teacher
  </button>
  <button class="btn btn-light" type="button" data-toggle="collapse" data-target="#collapseStudent" aria-expanded="false" aria-controls="collapseExample">
    Student
  </button>
</p>
<div class="collapse" id="collapseAdmin">
  <div class="card card-body">
  <div class="login-form">
            <form action="${pageContext.request.contextPath}/admin-login" method="POST">
                <h2 class="text-center" style="color:black">Admin LogIn</h2>
                <div class="form-group">
                    <input type="email" class="form-control" name="adminusername" placeholder="Admin UserName" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="adminpassword" placeholder="Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Log in</button>
                </div>
            </form>
  </div>
</div>
</div>
<div class="collapse" id="collapseTeacher">
  <div class="card card-body">
  <div class="login-form">
            <form action="${pageContext.request.contextPath}/teacher-login" method="POST">
                <h2 class="text-center" style="color:black">Teacher LogIn</h2>
                <div class="form-group">
                    <input type="email" class="form-control" name="teacherusername" placeholder="Teacher UserName" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="teacherpassword" placeholder="Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Log in</button>
                </div>
            </form>
  </div>
</div>
</div>
<div class="collapse" id="collapseStudent">
  <div class="card card-body">
  <div class="login-form">
            <form action="${pageContext.request.contextPath}/student-login" method="POST">
                <h2 class="text-center" style="color:black">Student LogIn</h2>
                <div class="form-group">
                    <input type="email" class="form-control" name="studentusername" placeholder="Student UserName" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="studentpassword" placeholder="Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Log in</button>
                </div>
            </form>
  </div>
</div>
</div>
</div>
</body>
</html>