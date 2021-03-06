<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/login/fonts/icomoon/style.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/login/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/login/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/login/css/style.css">

    <title>Login #5</title>
  </head>
  <body>
  
  <div class="d-md-flex half">
    <div class="bg" style="background-image: url('../resources/login/images/bg_1.jpg');"></div>
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="form-block mx-auto">
              <div class="text-center mb-5">
                <h3 class="text-uppercase">Login Page</strong></h3>
              </div>
              <form action="/link/testa" name="page1" method="post">
                <div class="form-group first">
                  <label for="username">ID</label>
                  <input type="text" class="form-control" placeholder="Your ID" id="id" name="id">
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" placeholder="Your Password" id="pw" name="pw">
                </div>
                
                <!-- 
                <div class="d-sm-flex mb-5 align-items-center">
                  <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Remember me</span>
                    <input type="checkbox" checked="checked"/>
                    <div class="control__indicator"></div>
                  </label>
                </div>
                 -->


				<!-- ????????? -->
<!--                 <input type="submit" value="login" class="btn btn-block py-2 btn-primary" id="loginBtn"> -->
				<input type="button" value="login" class="btn btn-block py-2 btn-primary" id="btnLogin">
                <!-- ???????????? -->
                <a class="btn btn-block py-2 btn-primary" href="${pageContext.request.contextPath}/link/exm">????????????</a>
                <!-- ???????????? -->
                <a class="btn btn-block py-2 btn-primary" href="../">????????????</a>
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    <script src="../resources/login/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/login/js/popper.min.js"></script>
    <script src="../resources/login/js/bootstrap.min.js"></script>
    <script src="../resources/login/js/main.js"></script>
    <script src="../resources/login/js/login.js"></script>
  </body>
</html>