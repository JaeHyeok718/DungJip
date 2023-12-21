<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>중개사무소 등록</title>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	 
	 
	<style>
	body {
		font-family: 'Arial', sans-serif;
		margin: 0;
		padding: 0;
		background-color: #f4f4f4;
	}
	
	.registration-container {
		background: #fff;
		width: 70%;
		margin: 40px auto;
		padding: 20px;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	}
	
	.form-title {
		font-size: 24px;
		text-align: center;
		margin: 20px 0;
	}
	
	.form-section {
		margin-bottom: 15px;
	}
	
	.form-section label {
		display: block;
		margin-bottom: 5px;
	}
	
	.form-section input[type="text"], .form-section select, .form-section input[type="email"],
		.form-section input[type="tel"], .form-section input[type="password"]{
		width: 100%;
		padding: 10px;
		margin-bottom: 10px;
		border: 1px solid #ddd;
		border-radius: 4px;
	}
	
	.userType input[type="radio"] {
		width: 23%;
		padding: 10px;
		margin-bottom: 10px;
		border: 1px solid #ddd;
		border-radius: 4px;
		
	}
	
	.form-section input[type="submit"] {
		width: 100%;
		padding: 10px;
		background-color: #000;
		color: #fff;
		border: none;
		border-radius: 4px;
		cursor: pointer;
	}
	
	.form-section input[type="submit"]:hover {
		background-color: #333;
	}
	</style>
</head>

<body>

 	<%@ include file="../common/header.jsp" %>
 	
		<div class="registration-container" style="padding:40px;width:40%;box-shadow: 0 0 4px 4px rgba(0, 0, 0, 0.1);">
			<h2 class="form-title">중개사무소 등록</h2>
			
			<form action="insertenroll.es" method="post">
					
				<div class="form-section">
					<label for="esName">중개사명*</label> 
					<input type="text" class="form-control" id="esName" name="esName" placeholder="중개사명">
					<input type="hidden" name="userId" value="${memberInfo.userId}">
				</div>				
	
				<div class="form-section">
					<label for="esCeo">대표자명*</label> 
 					<input type="text" class="form-control" id="esCeo" name="esCeo" placeholder="대표자명">				
				</div>

                <div class="form-section">
					<label for="esPhone">사업자 전화번호*</label> 
					<input type="text" class="form-control" id="esPhone" name="esPhone" placeholder="'-'를 제외한 숫자 11자리로 작성해 주세요">
					
				</div>
				
				<div class="form-section">
					<label for="esNum">사업자 등록 번호*</label> 
					<input type="text" class="form-control" id="esNum" name="esNum" placeholder="'-'를 제외한 숫자 11자리로 작성해 주세요">
					<span id="confirm"></span>
				</div>
                
				<div class="form-section">
					<label for="esRegisterNum">중개 등록 번호*</label> 
					<input type="text" class="form-control" id="esRegisterNum" name="esRegisterNum" placeholder="'-'를 제외한 숫자 14자리로 작성해 주세요">
					<span id="confirm2"></span>
				</div>
	
				<!-- 주소 text 누르면 팝업까지 -->
                <div class="form-section">
                    <label for="esAddress">주소*</label>
                    <input type="text" class="form-control" id="address_kakao" name="esAddress" placeholder="주소" >
                    <span class="placeholder"></span>
                </div>         	
				
				<script type="text/javascript">
				
	               	    window.onload = function(){
	               	        document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
	               	            
	               	        	event.preventDefault(); // 링크의 기본 동작을 중지
	               	        	//카카오 지도 발생
	               	            new daum.Postcode({
	               	                oncomplete: function(data) { //선택시 입력값 세팅
	               	                    document.getElementById("address_kakao").value = data.address; 	// 주소 넣기
	               	                    document.querySelector("input[name=esContent]").focus(); //다음 임력 칸으로 포커싱
	               	                
	               	                 
	               	                }
	               	            }).open();
	               	        });
	               	    }
	               	    
                 </script>
                 
                 <div class="form-section">
					<label for="esContent">중개사 소개</label> 
					<input type="text" class="form-control" id="esContent" name="esContent" placeholder="중개사를 짧게 소개해주세요.">
					
				</div>	
                 
                                  	
				<div align="center">
	                <button type="submit" value="nextEnroll" onclick="return memberEnrollResult();" >가입하기</button>
	                <button type="reset">초기화</button>
           		 </div>
				
			</form>
		</div>
		
		<script type="text/javascript">
		
	        var esNum = false;
	        var regexEsNum = /^\d{11}$/;
	    
	        //사업자 번호 자릿수 체크
	        $(document).ready(function() {
	            $("#esNum").change(function() {
	                var checkEsNum = $("#esNum").val();
	                if (!regexEsNum.test(checkEsNum)) {
	                    $("#confirm")
	                        .html("'-'를 제외한 숫자 11자리를 입력해주세요'")
	                        .css("color", "red");
	                    esNum = false;
	                    } else {
	                    $("#confirm")
	                        .html("인증이 완료되었습니다.")
	                        .css("color", "blue");
	                    esNum = true;
	                    }
	                
	            });
	        });
	        
		
	        var esRegisterNum = false;
	        var regesRegisterNum = /^\d{14}$/;
	    
	        //중개 등록 번호 자릿수 체크
	        $(document).ready(function() {
	            $("#esRegisterNum").change(function() {
	                var checkRegisterNum = $("#esRegisterNum").val();
	                if (!regesRegisterNum.test(checkRegisterNum)) {
	                    $("#confirm2")
	                        .html("'-'를 제외한 숫자 14자리를 입력해주세요")
	                        .css("color", "red");
	                    	esRegisterNum = false;
	                    } else {
	                    $("#confirm2")
	                        .html("인증이 완료되었습니다.")
	                        .css("color", "blue");
	                    	esRegisterNum = true;
	                    }
	                
	            });
	        });
				
			
	        function memberEnrollResult() {
	        	
	        	var esName = $("#esName").val();
				var esCeo = $("#esCeo").val();
				var esPhone = $("#esPhone").val();
				var esNum = $("#esNum").val();
				var esRegisterNum = $("#esRegisterNum").val();
				var address_kakao = $("#address_kakao").val();
				var esContent = $("#esContent").val();
	        	
	       		if(esName == null || esName == '') {
	       			alert("중개사를 입력하세요.");
	       			$("#esName").focus();
	       			return false;
	       		}
	        
	       		if(esCeo == null || esCeo == '') {
	       			alert("대표자명을 입력하세요.");
	       			$("#esCeo").focus();
	       			return false;
	       		}
	        
	       		if(esPhone == null || esPhone == '') {
	       			alert("전화번호를 입력하세요.");
	       			$("#esPhone").focus();
	       			return false;
	       		}
				
	       		if(esNum == null || esNum == '') {
	       			alert("사업자 번호를 입력하세요.");
	       			$("#esNum").focus();
	       			return false;
	       		}
	        	
	       		if(esRegisterNum == null || esRegisterNum == '') {
	       			alert("중개인 번호를 입력하세요.");
	       			$("#esRegisterNum").focus();
	       			return false;
	       		}
	        
	       		if(address_kakao == null || address_kakao == '') {
	       			alert("주소를 입력하세요.");
	       			$("#address_kakao").focus();
	       			return false;
	       		}
	        	        
	        }
		
		</script>
		
		
		
		
		
		<%@ include file="../common/footer.jsp" %>
				
</body>

</html>