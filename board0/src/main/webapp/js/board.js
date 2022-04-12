/**
 * 
 */
 var replyList = function(){
	$.ajax({
		url : '/board0/ReplyList.do',
		type : 'post',
		data : reply, //reply객체 - bonum, name, cont
		success: function(res){
	
	
			//댓글출력
			rcode = "";
			
			   rcode += '     <div class="card-body rcode">';
			   rcode += '     	<p class= "p1">';
			   rcode += '     		작성자: '+v.writer+' &nbsp;&nbsp;&nbsp;';
			   rcode += '     		이메일: '+v.mail+' &nbsp;&nbsp;&nbsp;';
			   rcode += '     		날짜: '+v.wdate+' &nbsp;&nbsp;&nbsp;';
			   rcode += '     		조회수: '+v.hit+' &nbsp;&nbsp;&nbsp;';
			   rcode += '     	</p>';
			   rcode += '     	<p class= "p2">';
			   rcode += '     		<input idx="'+v.num+'" type ="button" class="action" name="modify" value="수정">';
			   rcode += '     		<input idx="'+v.num+'" type ="button" class="action" name="delete" value="삭제">';
			   rcode += '     	</p>';
			   rcode += '     	<hr>';
			   rcode += '     	<p class= "p3">';
			   rcode += v.content;
			   rcode += '     	</p>';
			   rcode += '     </div>';
		 },
		 error: function(xhr){
			alert("상태: "+xhr.status);
		 },
		 dataType: 'json'
		 
		   
	})
}
 var replyInsert = function(){
	$.ajax({
		url : '/board0/ReplyInsert.do',
		type : 'post',
		data : reply, //reply객체 - bonum, name, cont
		success: function(res){
			alert(res.sw);
			
			//댓글출력
			replyList();
			
			rcode = "";
			
			   rcode += '     <div class="card-body rcode">';
			   rcode += '     	<p class= "p1">';
			   rcode += '     		작성자: '+v.writer+' &nbsp;&nbsp;&nbsp;';
			   rcode += '     		이메일: '+v.mail+' &nbsp;&nbsp;&nbsp;';
			   rcode += '     		날짜: '+v.wdate+' &nbsp;&nbsp;&nbsp;';
			   rcode += '     		조회수: '+v.hit+' &nbsp;&nbsp;&nbsp;';
			   rcode += '     	</p>';
			   rcode += '     	<p class= "p2">';
			   rcode += '     		<input idx="'+v.num+'" type ="button" class="action" name="modify" value="수정">';
			   rcode += '     		<input idx="'+v.num+'" type ="button" class="action" name="delete" value="삭제">';
			   rcode += '     	</p>';
			   rcode += '     	<hr>';
			   rcode += '     	<p class= "p3">';
			   rcode += v.content;
			   rcode += '     	</p>';
			   rcode += '     </div>';
			   
			   
			   
		},
		error: function(xhr){
			alert("상태: "+xhr.status);
		},
		dataType: 'json'
		
		
	})
}
 
 
 
 var boardDelete = function(){
		typevalue = $('#stype option:selected').val().trim();
		wordvalue = $('#sword').val().trim();
		
		$.ajax({
			url: '/board0/BoardDelete.do',
			type: 'post',
			data: {
				"page" : currentPage,
				"num" : actionIdx,
				"type" : typevalue,
				"word" : wordvalue
			},
			success: function(res){
				if(res.sw == "ok"){
					//새로 구한 전체페이지(6) < 현재페이지(7)
					if(res.totalp < currentPage){
							currentPage = sw.totalp;
					}		
					listServer();
				}else{
					alert("삭제실패");
				}
			},
			error: function(xhr){
				alert("상태: "+xhr.status); //200, 404, 500
			},
			dataType:'json'
		})
}
 
 var listServer = function(){
	
	$.ajax({
		url : '/board0/List.do',
		type: 'post',
		data: {
			'page' : currentPage,
			 'stype' : typevalue, //writer, content
			 'sword' : wordvalue
		},
		success: function(res) {
			
			code = "<div id='accordion'>";
			
			
			$.each(res.datas, function(i,v) {
			   code += '<div class="card" >';
			   code += '   <div class="card-header">';
			   code += '     <a class="card-link" data-toggle="collapse" href="#collapse'+ v.num +'">';
			   code += v.subject + '</a>';
			   code += '   </div>';
			   code += '   <div id="collapse'+ v.num +'" class="collapse" data-parent="#accordion">';
			   code += '     <div class="card-body">';
			   code += '     	<p class= "p1">';
			   code += '     		작성자: '+v.writer+' &nbsp;&nbsp;&nbsp;';
			   code += '     		이메일: '+v.mail+' &nbsp;&nbsp;&nbsp;';
			   code += '     		날짜: '+v.wdate+' &nbsp;&nbsp;&nbsp;';
			   code += '     		조회수: '+v.hit+' &nbsp;&nbsp;&nbsp;';
			   code += '     	</p>';
			   code += '     	<p class= "p2">';
			   code += '     		<input idx="'+v.num+'" type ="button" class="action" name="modify" value="수정">';
			   code += '     		<input idx="'+v.num+'" type ="button" class="action" name="delete" value="삭제">';
			   code += '     	</p>';
			   code += '     	<hr>';
			   code += '     	<p class= "p3">';
			   code += v.content;
			   code += '     	</p>';
			   code += '     	<p class= "p4">';
			   code += '     		<textarea rows="" cols="80"></textarea>';
			   code += '     		<input idx="'+v.num+'" type="button" class="action" name="reply" value="등록">';
			   code += '     	</p>';
			   code += '     </div>';
			   code += '   </div>';
			   code += ' </div>';
				
			})//반복문
			
			code += '</div>';
			
			
			$('.container').html(code);
			
			
			pcode="";
			//이전버튼 출력 
			if(res.startp > 1){
			 pcode +=   '<ul class="pagination">';     			
  			 pcode += '<li class="page-item"><a class="page-link prev" href="#">Previous</a></li></ul>';
			 	
			}
			pcode +='<ul class="pagination pager">';						
			//페이지 목록 출력
			for(i = res.startp; i<=res.endp ; i++){
				if(currentPage ==i){
				pcode += ' <li class="page-item active"><a class="page-link pnum" href="#">'+i+'</a></li>';	
				}else{
					
				pcode += '<li class="page-item"><a href="#" class="page-link pnum">'+i+'</a></li>';
					
				}
			}
			pcode +='</ul>';
			
			//다음 버튼 출력
			if(res.endp <res.totalp){
			 pcode +=   '<ul class="pagination">';     			
  			 pcode += '<li class="page-item"><a href="#" class="page-link next">next</a></li></ul>';
			}
			
			
			$('#pagelist').html(pcode);
			
			
		},
		error: function(vhr) {
			alert("상태: "+vhr.status);
		},
		dataType: 'json'
		
	})//ajax
	
}//listServer
 
 