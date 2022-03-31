<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>


  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<script>
$(function() {
	//아이디 중복체크
	$('#chk').on('click', function() {
		event.preventDefault();
		
		//입력한값 가져오기
		idvalue = $('#uid').val().trim();
		
		console.log(idvalue);
		
		//서버로전송
		$.ajax({
			//체크한값
			url: '/jqpro/IdCheck2.do',
			type: 'get',
			data: { "id" : idvalue },
			success: function(res) {
				//alert(res.flag);
				$('#idspan').html(res.flag).css('color','red');
			},
			error: function(vhr) {
				alert("상태: "+vhr.status);
			},
			dataType: 'json'
			
		})
		
		
	})
	
	
	
	//우편번호검색
	$('#chk2').on('click', function() {
		event.preventDefault();
		window.open("zipsearch.html","우편번호","width=500 height=400");
		
	})
	
	
	
	
})
</script>

</head>
<body>

<div class="container">
  <h2>회원가입</h2>
  <p>In this example, we use <code>.needs-validation</code>, which will add the validation effect AFTER the form has been submitting (if there's anything missing).</p>
  <p>Try to submit this form before filling out the input fields, to see the effect.</p>
  <form action="/action_page.php" class="needs-validation" novalidate>
  <!-- 이름 -->
    <div class="form-group">
      <label for="uname">이름</label>
      <input type="text" class="form-control" id="uname" placeholder="이름" name="uname" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    <!-- 아이디 -->
    <div class="form-group">
      <label for="uid">아이디</label>
      <button type="button" class="btn btn-primary btn-sm" id ="chk"> 중복검사 </button>
      <input type="text" class="form-control" id="uid" placeholder="아이디" name="uid" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    <span id="idspan"></span>
    </div>
    
    <!-- 패스워드 -->
      <label for="pwd">비밀번호</label>
      <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pswd" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
  
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" required> I agree on blabla.
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Check this checkbox to continue.</div>
      </label>
    </div>
    
    <!-- 생년월일 -->
    <div class="form-group">
      <label for="uday">생년월일</label>
      <input type="text" class="form-control" id="uday" placeholder="생년월일" name="uday" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    
    <!-- 휴대폰 -->
    <div class="form-group">
      <label for="uphon">휴대폰번호</label>
      <input type="text" class="form-control" id="uphon" placeholder="휴대폰번호" name="uphon" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    
    
    <!-- 이메일 -->
    <div class="form-group">
      <label for="umail">이메일</label>
      <input type="text" class="form-control" id="umail" placeholder="이메일" name="umail" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    
    <!-- 우편번호 -->
    <div class="form-group">
      <label for="uadd1">우편번호</label>
      <button type="button" class="btn btn-primary btn-sm" id ="chk2"> 우편번호 찾기 </button>
      <input type="text" class="form-control" id="uadd1" placeholder="우편번호" name="uadd1" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    
   <!-- 주소 -->
    <div class="form-group">
      <label for="uadd2">주소</label>
      <input type="text" class="form-control" id="uadd2" placeholder="주소" name="uadd2" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    
    <!-- 상세주소 -->
    <div class="form-group">
      <label for="uadd3">상세주소</label>
      <input type="text" class="form-control" id="uadd3" placeholder="상세주소" name="uadd3" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    
    
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</div>
<script>
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

</body>
</html>
