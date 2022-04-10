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
  <script src="../js/jquery.serializejson.min.js"></script>
  <script>
  	$(function() {
  		//아이디 중복체크
		$('#chk').on('click', function() {
			event.preventDefault(); 
			
			//입력한 값 가져오기
			idvalue = $('#uid').val().trim();
			console.log(idvalue);
			
			//서버로 전송
			$.ajax({
				url: '/jqpro/IdCheck.do',
				type: 'get',
				data: {"id" : idvalue},
				success: function(res) {
					//alert(res.flag);
					$('#idspan').html(res.flag).css('color','red');
					
				},
				error: function(xhr) {
					alert("상태: "+xhr.status);
				},
				dataType: 'json'
				
			})
			
			
		})
		//우편번호 검색
		$('#zipserach').on('click', function() {
			event.preventDefault(); 
			window.open("zipsearch.html", "우편번호", "width=500 height=400");
		})
		
		
		
		
		
		
		
			
	//우편번호찾기 - modal로 수행
	$('#btn1').on('click', function() {
		//입력한 값 가져온다.
		dongvalue = $('#dong').val().trim()
		console.log(dongvalue);
		
		//서버로 전송
		
		$.ajax({
			url: '/jqpro/ZipSearch',
			type: 'get',
			data: {"keyval": dongvalue},
			success: function(res) {
				str = "<table>";
				str += "<tr><td>우편번호</td>";
				str += "<td>주소</td>";
				str += "<td>번지</td></tr>";
				
				$.each(res, function(i, v) {
					var bunji = v.bunji;
					if(typeof bunji == "undefined"){
						bunji = "";
				
					}
					
					str += "<tr class='ziptr'><td>" + v.zipcode +"</td>";
					str += "<td>"+ v.sido + v.gugun + v.dong + "</td>";
					str += "<td>"+ bunji +"</td></tr>";
				})
				str += "</table>";
				$('#result1').html(str);
			},
			error: function(xhr) {
				alert("상태: "+ xhr.status)
			},
			dataType: 'json'
			
		})
		
	})
	
	//검색결과에서 선택하여 부모창으로 값을 넘기기
	$(document).on('click','.ziptr', function() {
		zipcode = $("td:eq(0)", this).text();
		addr = $('td:eq(1)', this).text();
		
		$('#uzip').val(zipcode);
		$('#uadd1').val(addr);
		
		
		$('#dong').val("");
		$('#result1').empty();
		$('#myModal').modal('hide');
		
		
	})
	
	
	
	
	$('form').on('submit', function() {

		
		fdata1 = $('form').serialize();
		fdata2 = $('form').serializeArray();
		fdata3 = $('form').serializeJSON();
		
		
		console.log(fdata1);
		console.log(fdata2);
		console.log(fdata3);
		
		
		$.ajax({
			url: '<%= request.getContextPath() %>/Insert.do',
			data: fdata3,
			type: 'post',
			success: function(res) {
				$('#joinspan').html(res.flag).css('color','red');
				//alert(res.flag);
			},
			error: function(vhr) {
				alert("상태: "+vhr.status)
			},
			dataType: 'json'
			
		})
		
		return false;
		
		
	})
	
	
	
	
	
	
	
})
	
	
	
  </script>
  
  
<style>
#dong{
margin-left: 20px;
}
.ziptr:hover{
background: lime;

}
</style>


</head>
<body>

<div class="container">
  <h2>회원가입</h2>
  
  
   <form class="needs-validation" novalidate>
  
    <div class="form-group">
      <label for="uid">아이디</label>
      <button type="button" class="btn btn-info mb-2 mr-sm-2" id="chk">중복검사</button>
      <!--  required => 필수항목
      placeholder="Enter username" => default text  -->
      <input type="text" class="form-control control-label col-sm-3" id="uid" placeholder="Enter userid" name="mem_id" required>
  
      
      <span id="idspan"></span>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
  
    <div class="form-group">
      <label for="uname">이름</label>
      <!--  required => 필수항목
      placeholder="Enter username" => default text  -->
      <input type="text" class="form-control control-label col-sm-3" id="uname" placeholder="Enter username" name="mem_name" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <!-- 생년월일 -->
    <div class="form-group">
      <label for="day">생년월일</label>
      <!--  required => 필수항목
      placeholder="Enter username" => default text  -->
      <input type="data" class="form-control control-label col-sm-3" id="birth" placeholder="19999 04 15" name="mem_birth" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    
    <div class="form-group">
      <label for="pwd">비밀번호</label>
      <input type="password" class="form-control control-label col-sm-3" id="pwd" placeholder="Enter password" name="mem_pass" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember" required> I agree on blabla.
        <div class="valid-feedback">Valid.</div>
        <div class="invalid-feedback">Check this checkbox to continue.</div>
      </label>
    </div>
    <!-- 휴대폰  -->
    <div class="form-group">
      <label for="phon"> 휴대폰번호 </label>
      <!--  required => 필수항목
      placeholder="Enter username" => default text  -->
      <input type="text" class="form-control control-label col-sm-3" id="phon" placeholder="010-1234-5678" name="mem_phon" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <!--이메일 -->
    <div class="form-group">
      <label for="mail">이메일</label>
      <!--  required => 필수항목
      placeholder="Enter username" => default text  -->
      <input type="text" class="form-control control-label col-sm-3" id="mail" placeholder="Enter username" name="mem_mail" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <!--우편번호 -->
    <div class="form-group">
      <label for="uzip">우편번호</label>
      <!--  required => 필수항목
      placeholder="Enter username" => default text  -->
      <button type="button" id="zipserach" class="btn btn-info mb-2 mr-sm-2" id="zipsearch">번호검색</button>
      <button type="button" id="zipserach" class="btn btn-info mb-2 mr-sm-2" data-toggle="modal" data-target="#myModal"> 번호검색modal </button>
      <input type="text" class="form-control control-label col-sm-3" id="uzip" placeholder="Enter username" name="mem_zip" required>
      
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <!-- 주소 -->
    <div class="form-group">
      <label for="uadd1">주소</label>
      <!--  required => 필수항목
      placeholder="Enter username" => default text  -->
      <input type="text" class="form-control control-label col-sm-3" id="uadd1" placeholder="Enter username" name="mem_add1" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
   <!--상세주소 -->
    <div class="form-group">
      <label for="add3">상세주소</label>
      <!--  required => 필수항목
      placeholder="Enter username" => default text  -->
      <input type="text" class="form-control control-label col-sm-3" id="add3" placeholder="Enter username" name="mem_add2" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    
    
    <button type="submit" class="btn btn-primary btn-sm"  >Submit</button>
    <span id="joinspan"></span>
    
  </form>
</div>



<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">우편번호 찾기</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        	<input type="text" id="dong">
			<input type="button" value="확인" id="btn1">
			<div id="result1"></div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
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
    	//데이터검사
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
