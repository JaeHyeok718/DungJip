

## 1. 프로젝트 [DUNGJIP]소개🙌
<img width="562" alt="image" src="https://github.com/JaeHyeok718/DungJip/assets/149359037/635878d2-27fb-4ac4-8fec-ad201667022e">
<br><br>
 <H4>프로젝트 소개 및 개요 </H4> 현대사회에서 인터넷은 사람들의 생활 방식을 혁신적으로 변화시켰고,이는 부동산 시장에도 영향을 미쳤습니다.<br>
 그 결과, 여러 온라인 부동산 플랫폼들이 등장하였습니다.<br>
 그러나 대부분의 플랫폼은 서류 정보나 부동산 중개인의 정보에만 집중하고 있으며,<br>
 실제로 거주했던 사람들의 생생한 후기나 경험담을 제공하지 못하고 있습니다.<br>
 이로 인해 많은 사람들이 여전히 직접 부동산을 방문하여 확인해야 하는 상황이 발생하고 있습니다. <br>
 이러한 문제를 해결하기 위해 우리는 새로운 웹 사이트를 기획하였습니다.<br>


## 2. 작업 과정 📅
<img width="607" alt="image" src="https://github.com/JaeHyeok718/DungJip/assets/149359037/3ec4d182-4c7d-4e22-891f-fbd72d680615">


## 3. 전체적인 기능 📌
1.사용자 인증 및 계정 관리<br>
  • 로그인<br>
  • 회원가입<br>
   •-1 임대인,임차인,중개인을 구분하여 회원등록<br> 
서로의 각자 회원가입 입력정보가 다르도록 설정<br>
   • 마이페이지<br>
   • 아이디 및 비밀번호 찾기<br><br>
2. 관리자 페이지<br>
   • 관리자 페이지 기능구현<br><br>
3. 부동산 매물 등록<br>
   • 부동사 매물을 등록하는 기능 구현<br><br>
4. 매물 상세 페이지<br> 
   • 해당 매물의 자세한 정보를 표시하는 페이지 구현<br><br>
5. 부동산 상세 페이지<br>
   • 부동산의 자세한 정보를 제공하는 페이지 구현<br>
   • 예약기능을 구현하여 사용자와 공인중개사 간의 면담 예약기능 구현<br><br>	
6. 채팅<br> 
   • 임차인과 부동산 간의 채팅 기능 구현<br><br>
7. 챗봇<br>
   • 사용자 편의를 위해 챗봇 기능 구현<br><br>
8. 매물 추천<br> 
   • 사용자가 원하는 조건의 매물을 추천하는 기능 구현<br><br>
9. 매물 근처 주변 편의시설 정보 제공 구현<br>
   • 카카오 지도 API를 통해 해당하는 매물 근처에 교통정보 ,약국 ,병원 ,학교 등  편의 시설 정보 제공 구현<br><br> 
10. 구독 서비스 결제 구현<br>
   • 공인중개사가 구독할 시에 공인 중개사의 광고 기능 구현<br>
   • 카카오 결제 API 사용<br>








## 4. What did Use? 🛠️
</br>
    Front - HTML5, CSS3, JavaScript, Jquery, AJAX<br>
    Back - JAVA, JSP & Servlet<br>
    FrameWork / Libary - Spring , 카카오 결제 API, 카카오 지도 API <br>
    DB -  Oracle 11g<br>
    Tool - Visyal Studio Code, STS<br>
    Was - Apache Tomcat 9.0<br>
    Collaboration - Git / Slack / Notion<br>

## 5.나의 담당 구현 기능 🖐️
채팅 기능 구현<br> 
 • WebSocket을 사용한 1:1 채팅 구현<br>
 • 사용자와 상대의 채팅을 쉽게 알아볼 수 있도록 인터페이스 구현<br>
 • 채팅 중 신고 기능 구현<br>
 • 채팅 방 검색 기능 구현<br>
 • 욕설 필터링 기능 구현<br>
 • 우클릭 이벤트로 채팅방 삭제 기능 구현<br>
 • 각각의 채팅방에 쌓인 메시지 개수 구현(안 읽은 메시지)<br>
 • 상대의 로그인, 로그아웃 시간을 계산하여 현재 활동중인지, 마지막 활동 시간을 계산하여 인터페이스 구현<br><br>
부동산 리뷰 관련 기능 구현<br>
 • 마이페이지에서 공인중개사 면담 후 공인중개사의 리뷰를 작성 하는데 해당 하는 면담 시간 이후 리뷰를 작성하는 기능 구현<br><br> 
관리자 페이지 채팅 중 신고 기능 구현<br>
• 채팅 중 신고 버튼을 누르면 관리자에게 해당하는 신고 사유와 채팅내역을 보이게함.<br><br> 
챗봇 기능 구현 <br>
• 사용자 편의 기능 구현<br> 
Interceptor 구현 <br>
• url 주소로 비정상적인 접근을 하였을때 경고창 발생<br>

## 6. 프로젝트 참여 소감 📖
프로젝트에 참여하여 Spring을 도입함으로써 이전에 사용하지 않았을 때 발생한 불편함을 해결할 수 있었습니다.<br>
기존의 MVC 모델에서 사전에 구축된 모듈을 사용하여 컨트롤러, 서비스 및 DAO를 간단하게 어노테이션을 통해 정의할 수 있었습니다.<br>
롬복(LOMBOK)을 사용하여 VO를 쉽게 정의할 수 있어 편리했습니다. 또한, 의존성을 쉽게 주입할 수 있는 Dependency를 통해 프로젝트가 훨씬 간단해졌습니다. <br>
그러나 초기 설정에는 어려움이 있었지만 수업에서 배운 내용을 반영하고 초기 설정을 진행한 후 필요한 설정을 주입하여 설정을 완료할 수 있었습니다.<br>
이 프로젝트에서 제 주요 역할은 웹소켓을 사용하여 채팅 기능을 구현하는 것이었습니다. <br>
처음에는 수업에서 웹소켓의 세부 내용을 자세히 배우지 않았기 때문에 프로젝트 초반에 큰 어려움이 있었지만 웹소켓을 자세히 공부하고 적용함으로써 어려움이 점차 해결되었습니다. <br>
특히, 이전까지는 사용자만을 고려하여 인터페이스를 구현했지만 채팅을 구현할 때는 내 화면뿐만 아니라 상대방의 화면도 고려해야 하는 어려움이 있었습니다. <br>
또한, 웹소켓 세션에 해당하는 채팅방의 사용자만 입장할 수 있는 기능을 구현하는 것이 처음에는 어려웠지만 map을 통해 간단하게 해결할 수 있었습니다. 이 프로젝트를 통해 제가 java를 더 자세히 공부할 수 있었다고 생각합니다. <br>
또한, 이 프로젝트는 팀의 조화와 협력에 주목했습니다. 어떤 논쟁도 없이 모든 것이 원활하게 진행되었고, 팀원들과의 협력이 원활히 진행되며 모두가 서로 도움을 주었습니다.<br> 
가장 기억에 남는 것은 어려운 문제를 해결하기 위해 모두가 함께 노력한 것입니다. 이 프로젝트 동안 가장 기억에 남는 것은 각 개인이 팀에 통합되어 서로에게 힘을 실어준 것입니다.<br>


## 7.나의 프로젝트 구현 기능 영상 📹(클릭시 블로그로 연결됩니다)
<a href="https://blog.naver.com/jangcodingstudy/223316920887"><img width="604" alt="image" src="https://github.com/JaeHyeok718/DungJip/assets/149359037/f3d7ad36-9257-4e5e-afef-5bfe4e6d4639"></a>

