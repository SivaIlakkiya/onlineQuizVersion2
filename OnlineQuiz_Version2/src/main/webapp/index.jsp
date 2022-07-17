<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>OnQuizyyy</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style>
body, html {
            height: 100%;
        }
        .quiz-text {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }

</style>
<jsp:include page="navbar.jsp"></jsp:include>
<jsp:include page="background.html"></jsp:include>
</head>
<body>
<div class="quiz-text">
<h1>Welcome to the Quiz World</h1>
        <h3>Start a quiz and increase your knowledge!</h3>
        <h4>Login/<a data-toggle="modal" data-target="#registerModal" type="button">Register</a> to take Test </h4>
</div>





<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Registration Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="${pageContext.request.contextPath}/register-student" method="POST">
                <div class="form-group">
                    <input type="email" class="form-control" name="semail" placeholder="Enter Name of the Student" required="required">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" name="semail" placeholder="Enter Valid Email" required="required">
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" name="sgae" placeholder="Enter Age" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="spassword" placeholder="New Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Register</button>
                </div>
            </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>