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
body, html {
            height: 100%;
        }
        .quiz-image {
            background-image: linear-gradient(rgba(0, 0, 0, 0.9), rgba(0, 0, 0, 0.8)), url("https://www.pngitem.com/pimgs/m/9-90322_quiz-transparent-background-hd-png-download.png");
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }
        
        img{
        height:300px;
        }
</style>
</head>
<body>
  <div class="quiz-image">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/">OnQuizyyyy</a>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="${pageContext.request.contextPath}/">Home</a>
      <a type="button" class="nav-item nav-link active" data-toggle="modal" data-target="#updatepassModal">Update Password</a>
      <a class="nav-item nav-link active navbar-brand" style="padding-left:900px" ><%= request.getParameter("adminusername") %></a>
      <a class="nav-item nav-link active" href="${pageContext.request.contextPath}/">Logout</a>
    </div>
  </div>
</nav>
<div class="modal fade" id="updatepassModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Update Password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="${pageContext.request.contextPath}/update-password" method="POST">
                <div class="form-group">
                    <input type="email" class="form-control" name="adminemail" placeholder="Admin UserName/Email" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="currpassword" placeholder="Current Password" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="newpassword" placeholder="New Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Update</button>
                </div>
            </form>
      </div>
    </div>
  </div>
</div> 
<div class="card-deck" style="padding-top:50px;padding-right:25px;padding-left:25px">
  <div class="card">
  <a href="AdminTeachers.jsp">
    <img class="card-img-top" src="https://i.pinimg.com/736x/49/f4/10/49f4104ef479eb2b3dc4dff93fb47dfa.jpg"  alt="Card image cap">
    </a>
    <div class="card-body">
      <h5 class="card-title">MANAGE TEACHERS</h5>
    </div>
  </div>
  <div class="card">
  <a href="adminstudents.jsp">
    <img class="card-img-top" src="https://i.pinimg.com/originals/78/c7/6c/78c76cdeeba284a8f09e5b6d32f873a1.jpg" alt="Card image cap">
    </a>
    <div class="card-body">
      <h5 class="card-title">MANAGE STUDENTS</h5>
    </div>
  </div>
  <div class="card">
  <a href="${pageContext.request.contextPath}/">
    <img class="card-img-top"  src="https://thumbs.dreamstime.com/b/vector-illustration-hand-hold-round-score-card-banner-plate-numbers-votes-jury-judges-tournament-contest-cartoon-241019735.jpg" alt="Card image cap">
    </a>
    <div class="card-body">
      <h5 class="card-title">VIEW SCORES</h5>
    </div>
  </div>
</div>
</div>
</body>
</html>