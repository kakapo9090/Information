<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입 화면</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form action="setNew" class="validation-form" id="frm" method="post" enctype="multipart/form-data">
        
          <!-- 아이디 -->
          <div class="mb-3">
    		<label for="text" class="form-label">ID</label>
    		<input type="text" class="form-control put" id="id" name="id"><br>
    		<button type="button" id="idCheck">ID중복확인</button>
			<div id="idResult"></div>
 		 </div>
          
          <!-- 비밀번호 -->
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">비밀번호</label>
              <input class="form-control put pw" id="pw1" name="pw" type="password">
            </div>
            <div class="col-md-6 mb-3">
              <label for="name">비밀번호 확인</label>
              <input class="form-control put pw" id="pw2" name="check" type="password">
            </div>
          </div>
          
          <!-- 이름 -->
          <div class="mb-3">
            <label for="name">이름</label>
            <input class="form-control put" id="name" name="name" type="text">
          </div>
          
          <!-- 전화번호 -->
          <div class="mb-3">
            <label for="phone">핸드폰 번호</label>
            <input class="form-control put" id="phone" name="phone" type="tel">
          </div>
          
          <!-- 이메일 -->
          <div class="mb-3">
            <label for="email">이메일</label>
            <input class="form-control put" id="email" name="email" type="email">
          </div>

          <!-- 주소 -->
          <div class="mb-3">
            <label for="address1">주소</label>
            <input class="form-control put" id="address1" name="address1" type="text">
          </div>

          <!-- 상세주소 -->
          <div class="mb-3">
            <label for="address2">상세주소</label>
            <input class="form-control put" id="address2" name="address2" type="text">
          </div>

          
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" id="btn" type="button">가입 완료</button>
          <!-- 돌아가기 -->
          <a class="btn btn-primary btn-lg btn-block" href="${pageContext.request.contextPath}/link/login">돌아가기</a>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2021 YD</p>
    </footer>
  </div>

<script src="../resources/js/exm.js"></script>  

</body>

</html>