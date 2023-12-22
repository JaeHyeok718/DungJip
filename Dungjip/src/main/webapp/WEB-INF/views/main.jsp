<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
      * {
        box-sizing: border-box;
      }

      body {
        margin: 0;
        font-family: "Noto Sans KR", sans-serif;
      }

      .search-bar {
        background: url("resources/img/mainPage.jpg") no-repeat center center;
        background-size: cover;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        height: 460px;
        padding: 20px;
        text-align: center;
        color: #fff;
      }

      .search-bar-title {
        font-size: 40px;
        font-weight: bold;
        margin-bottom: 72px;
      }

      .search-bar-input {
        width: 100%;
        height: 60px;
        display: flex;
        justify-content: center;
      }

      .search-bar input {
        width: 560px;
        border-radius: 8px 0 0 8px;
        font-size: 16px;
        padding-left: 15px;
        border: none;
      }

      .search-bar button {
        padding: 10px;
        width: 80px;
        font-size: 16px;
        background-color: #cca427;
        color: white;
        font-weight: bold;
        border-radius: 0 8px 8px 0;
        border: none;
        cursor: pointer;
        transition: font-size 0.2s ease;
      }
      
      .search-bar button:hover {
        padding: 10px;
        width: 80px;
        font-size: 20px;
        background-color: #cca427;
        color: white;
        border-radius: 0 8px 8px 0;
        border: none;
        cursor: pointer;
      }

      .main-content {
        display: flex;
        margin: 20px;
      }
      
      .card-container{
      	display: flex;
        overflow: hidden;
        scroll-behavior: smooth;
      }

      .card {
            flex: none;
            width: 313px;
            margin-right: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 16px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .scroll-button {
            cursor: pointer;
            padding: 8px;
            background-color: #f4f4f4;
            border: none;
            font-size: 16px;
        }

      .card img {
        max-width: 280px;
        height: auto;
      }

		#menu {
			width: 640px;
            display: flex;
            justify-content: space-around;
            background-color: #cca427;
            padding: 0;
            list-style-type: none;
            margin: 0 0 20px 0;
            border-radius: 10px;
            opacity : 0.9;
            overflow: hidden;
        }
        #menu li {
            color: white;
            display: block;
            font-size: 18px;
            text-align: center;
            padding: 8px 84.59px;
            text-decoration: none;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        #menu li.active {
            background-color: #fff;
            color: #cca427;
            border-radius: 10px;
            font-weight: 800;
        }

    </style>
</head>
<body>
	<%@ include file="common/header.jsp"%>
	<%@ include file="common/chatbot.jsp"%>
	<script>
		$.ajax({
			url:"select.location",
			success: function(result){
				var str = "";
				for(var i = 0; i < result.length; i++){
					str += '<option value="'+result[i].houseAddress+'"/>'
				}
				$("#locations").html(str);
			},error:function(){
				console.log("통신 에러");
			}
		})
    
		$("#goChat").click(function(){
			location.href="websocket/ask";
			
			
		});
	</script>
	<div class="search-bar">
      <div class="search-bar-title">어떤 집을 찾고 계세요?</div>
      <ul id="menu">
        <li class="active">원룸</li>
        <li>빌라</li>
        <li>오피스텔</li>
    </ul>
      <div class="search-bar-input">
        <input type="text" list="locations" id="locationInput" placeholder="검색어를 입력하세요" />
        <datalist id="locations">
        	
        </datalist>
        <button onclick="moveToMap();">검색</button>
      </div>
    </div>
    
    <script>
        // Get all the menu items
        var menuItems = document.querySelectorAll('#menu li');
        selectHouseType('원룸');
        // Function to remove the active class from all items
        function removeActiveClasses() {
            menuItems.forEach(function(item) {
                item.classList.remove('active');
            });
        }

        // Function to add active class to the clicked item
        function setActiveClass(clickedItem) {
            removeActiveClasses();
            clickedItem.classList.add('active');
        }

        // Add click event to all menu items
        menuItems.forEach(function(item) {
            item.addEventListener('click', function() {
                setActiveClass(item);
                
               	selectHouseType(item.textContent);
            });
        });
        
        function selectHouseType(type){
        	$.ajax({
    			url: 'select.house',
    			data:{
    				type: type,
    			},success: function(result){
    				/* var str = "";
    				
    				for(var i = 0; i < result.length; i++){
    					str += '<div class="card"> <img src="'+result[i].+'">' 
    				} */
    				console.log(result);
    			},error: function(){
    				console.log("통통신신에에러러");
    			}
        	})
        };
    </script>
    
    <script>
	const activeMenuItem = document.querySelector('#menu li.active');
    	function moveToMap(){
        	const locationValue = document.getElementById('locationInput').value;
            // 선택된 메뉴 항목의 텍스트 값 가져오기
            const type = activeMenuItem.textContent.trim();
			
            if(locationValue == null || locationValue == ""){
            	location.href="villa.map?type="+type+"&locate=서울%영등포구%양평동4가%2";   
            } else {            	
	        	location.href="villa.map?type="+type+"&locate="+locationValue;            	
            }
    	}
    </script>
    
    <div class="main-content">
		<button class="scroll-button" onclick="scroll(-200)">&lt;</button>
			<div class="card-container" id="cardContainer">
		      <div class="card">
		        <img
		          src="https://placehold.co/280x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <button>
		          <a href="websocket/ask?estateUserNo=3"><!-- 각 부동산의 사용자 순번을 넣을거다 --><!-- 부동산 상세페이지가 아직 구현이 안돼서 해두었습니다 -->
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		      </a>
		      </button>
		        <p>채팅 임시 확인 버튼</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
		      <div class="card">
		        <img
		          src="https://placehold.co/200x200"
		          alt="Placeholder image representing an advertisement"
		        />
		        <p>광고 공간</p>
		      </div>
	      </div>
      
		<button class="scroll-button" onclick="scroll(200)">&gt;</button>
    </div>
     <script>
	    let isDown = false;
	    let startX;
	    let scrollLeft;
	    const slider = document.querySelector('.card-container');
	
	    // Button click scrolls
	    function scroll(offset) {
	        slider.scrollLeft += offset;
	    }
	
	    document.querySelectorAll('.scroll-button').forEach(button => {
	        button.addEventListener('click', (e) => {
	            const direction = button.innerText === '>' ? 1 : -1;
	            scroll(direction * 200); // Scroll distance for each click
	        });
	    });
	
	    // Mouse drag scrolls
	    slider.addEventListener('mousedown', (e) => {
	        isDown = true;
	        slider.classList.add('active');
	        startX = e.pageX - slider.offsetLeft;
	        scrollLeft = slider.scrollLeft;
	    });
	
	    slider.addEventListener('mouseleave', () => {
	        isDown = false;
	        slider.classList.remove('active');
	    });
	
	    slider.addEventListener('mouseup', () => {
	        isDown = false;
	        slider.classList.remove('active');
	    });
	
	    slider.addEventListener('mousemove', (e) => {
	        if (!isDown) return;
	        e.preventDefault();
	        const x = e.pageX - slider.offsetLeft;
	        const walk = (x - startX); // Scroll speed
	        slider.scrollLeft = scrollLeft - walk;
	    });
    </script>
	      
	<%@ include file="common/footer.jsp"%>
</body>
</html>