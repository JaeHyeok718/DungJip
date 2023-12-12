<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.dungjip.member.model.vo.Member"%>
<% 
	String contextPath = request.getContextPath();	

	Member loginUser = (Member)session.getAttribute("loginUser");
	String alertMsg = (String)session.getAttribute("alertMsg");

	//쿠키정보 
	//쿠키정보
	Cookie[] cookies = request.getCookies();		//반환타입: 배열
	
	//쿠키 배열에서 필요한 쿠키 정보를 추출하기
	//반복으로 돌려서 해당 쿠키의 이름을 찾고 그 쿠키의 값을 담아두기
	String saveId = "";
	
	if(cookies != null){
		for(Cookie c : cookies){
			if((c.getName()).equals("userId")){
				saveId = c.getValue();
			}
		}
	}
	
	System.out.println("저장된 ID : "+saveId);
%>    
    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
    
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GARO ESTATE | Register page</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	
    </head>
    <body>

       <%@ include file="../common/header.jsp" %>

 
        <!-- End page header -->
 

        <!-- register-area -->
        <div class="register-area" style="background-color: rgb(249, 249, 249);">
        
            <div class="container" style="display: flex; justify-content: center;">
                <div class="col-md-6">
                    <div class="box-for overflow" style="width: 600px; height: 600px;">                         
                        <div class="col-md-12 col-xs-12 login-blocks">
                            <h2>Login : </h2> 
                            <form action="login.me" method="post">
                                <div class="form-group">
                                    <label for="userId">Id</label>
                                    <input type="text" class="form-control" name="userId" id="userId">
                                </div>
                                <div class="form-group">
                                    <label for="userPwd">Password</label>
                                    <input type="password" class="form-control" name="userPwd" id="userPwd">
                                </div>
                                
                                <!-- 아이디 저장하기 -->
								<div class="form-check <!-- form-check-reverse py-2 -->">
								  <label class="form-check-label" for="saveId" style="padding:0px 10px 0 0px">아이디 저장하기</label>
								  <input class="form-check-input" type="checkbox" id="saveId" name="saveId" style="width: min-content;">
								 	<br><br>
								</div>
								
								<div class="col-md-12 form-group"  align = center>
									<span> <a href="findInfo.bo">아이디 찾기 / 비밀번호 찾기</a></span> 
									<span><a href="enrollType.me">/ 회원가입</a></span>
									
								</div>
                                
                                
                                <div class="text-center">                                	
                                    <button type="submit" class="btn btn-default"> Log in</button>
                                </div>
                            </form>
                            <br>
                            
                            <h2>Social login :  </h2> 
                            
                            <p>
                            <a class="login-social" href="#"><i class="fa fa-facebook"></i>&nbsp;Facebook</a> 
                            <a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;Gmail</a> 
                            <a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;Twitter</a>  
                            </p> 
                        </div>
                        
                    </div>
                </div>

            </div>
        </div> 
        
        <script type="text/javascript">
        
        	var msg = "<%=alertMsg%>"; 
        	
        	if(msg != "null") {
        		
        		alert(msg);
        		
        		<%session.removeAttribute("alertMsg");%>
        	}
       
        	$(function() {
        		//쿠키 아이디 값 가지고 오기 
        		var saveId= "<%= saveId %>";
        		
        		console.log("가져왓니?? : ",saveId);
        		
        		if(saveId != "") {
        			console.log("가져온 ID : ",saveId);
        			$("input[name=userId]").val(saveId);
        			$("input[name=saveId]").attr("checked",true);
        		}
        	});
        
        </script>     

          <!-- Footer area-->
         <%@ include file="../common/footer.jsp" %>

    </body>
</html>