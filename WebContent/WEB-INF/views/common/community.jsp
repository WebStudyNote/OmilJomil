<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<title>커뮤니티 페이지</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	margin: 0 auto;
	font-family: sans-serif;
}

section a {
	color: black;
	text-decoration: none;
}

/* hearder부분 */

/* body  section부분 */

/*커뮤니티 제목부분*/
#comunity-bar {
	position: absolute;
	top: 330px;
	left: 850px;
}

#comunity-title {
	font-size: 60px;
}

#route {
	display: inline-flex;
	position: relative;
	font-size: 28px;
	left: 300px;
}

#route, #route a {
	color: #888;
}

#route span {
	padding-left: 20px;
}

#route a:hover {
	text-decoration: underline;
	color: yellowgreen;
}

/*여기까지 타이틀과 경로부분*/

/*문의 사항*/
#want-list {
	font-size: 25px;
	position: absolute;
	left: 250px;
	top: 560px;
}

#want-list li:hover {
	cursor: pointer;
	text-decoration: underline;
}

#want-list li {
	padding-bottom: 15px;
}

#want-list div {
	margin-bottom: 20px;
}

#want-button {
	font-weight: 700;
	font-size: 15px;
	border: 1px solid darkgray;
	width: 100px;
	height: 30px;
	position: absolute;
	left: 380px;
	top: 10px;
	background-color: darkgray;
}

#want-more-button {
	font-weight: 700;
	font-size: 15px;
	border: 1px solid darkgray;
	width: 100px;
	height: 30px;
	position: absolute;
	left: 490px;
	top: 10px;
	background-color: darkgray;
}

#want-list-title {
	width: 362px;
	position: relative;
	background-color: gray;
	color: white;
	text-align: center;
	border: 2px solid gray;
	border-radius: 5px;
}

/*문의사항 리스트 클릭했을때 나올 메시지박스*/
.want-list-answer {
	display: none;
	list-style: none;
	width: 400px;
	height: 90px;
	border: 2px solid gray;
	border-radius: 5px;
	text-align: center;
	margin-bottom: 20px;
}
/*여기까지 문의사항*/

/*공지 사항*/
#notice-list {
	position: absolute;
	font-size: 25px;
	left: 1220px;
	top: 560px;
}

#notice-more-button {
	font-weight: 700;
	font-size: 15px;
	position: absolute;
	left: 105%;
	top: 10px;
	width: 100px;
	height: 30px;
	background-color: darkgray;
	border: 1px solid darkgray;
}

#notice-write-button {
	font-weight: 700;
	font-size: 15px;
	position: absolute;
	left: 135%;
	top: 10px;
	width: 100px;
	height: 30px;
	background-color: darkgray;
	border: 1px solid darkgray;
}

#notice-list li {
	margin-bottom: 15px;
}

#notice-list li:hover {
	cursor: pointer;
	text-decoration: underline;
}

#notice-list-title {
	background-color: grey;
	color: white;
	margin-bottom: 20px;
	width: 350px;
	border: 2px solid gray;
	border-radius: 5px;
	text-align: center;
}

#review {
	position: absolute;
	top: 1080px;
	left: 40px;
	margin-top: 50px;
}

#review-titlebar {
	position: absolute;
	left: 740px;
}

#review-title {
	width: 340px;
	background-color: gray;
	text-align: center;
	color: white;
	font-size: 28px;
	border: 1px solid gray;
	border-radius: 5px;
}

#review-button {
	font-weight: 700;
	font-size: 15px;
	position: absolute;
	left: 365px;
	top: 10px;
	width: 100px;
	height: 30px;
	background-color: darkgray;
	border: 1px solid darkgray;
}

#review-list {
	position: absolute;
	display: flex;
	left: 15px;
	top: 150px;
}

.review-list-box {
	border: 2px solid gray;
	margin-left: 110px;
	width: 300px;
	height: 336px;
}

.review-list-innerbox {
	border-bottom: 2px solid gray;
	width: 300px;
	height: 200px;
}

.review-list-innerbox a {
	background-position: 50% 50%;
	background-repeat: no-repeat;
	background-size: contain;
	display: block;
	width: 290px;
	height: 200px;
}

.review-list-text {
	justify-content: center;
	line-height: 30px;
	text-align: center;
}

#review-more-button {
	font-weight: 700;
	position: absolute;
	font-size: 18px;
	top: 530px;
	left: 1700px;
	width: 150px;
	height: 40px;
	background-color: darkgray;
	border: 1px solid darkgray;
}

button:hover {
	cursor: pointer;
}

#review-button:hover, #notice-more-button:hover, #notice-write-button:hover,
	#want-more-button:hover, #want-write-button:hover, #want-button:hover:hover,
	#review-more-button:hover {
	color: gray;
}
</style>
</head>
<body>


	<%@include file="./header.jsp"%>
	<!--  메인 페이지  -->

	<form action="#" method="post">
		<section id="comunity-bar">
			<span id="comunity-title"> 커뮤니티
				<div id="route">
					<span><a href="#"
						onclick="location.href='<%=request.getContextPath() %>'">홈</a></span> <span
						id="pointer">--></span> <span><a href="#"
						onclick="location.href='<%=request.getContextPath()%>/community.me'">커뮤니티</a></span>
				</div>
			</span>
		</section>




		<section id="want-list">
			<button type="button" id="want-button">문의하기</button>
			<button type="button" id="want-more-button"
				onclick="location.href='<%=request.getContextPath() %>/questionList.bo'">더보기</button>
			<div id=want-list-title>문의 사항</div>
			<ul>
				<li class="want-list-QA">배송 비용은 얼마인가요?</li>
				<div class="want-list-answer">
					<p>베송비용은 지역마다 조금씩 차이가있습니다</p>
				</div>
				<li class="want-list-QA">비회원도 주문 가능한가요?</li>
				<div class="want-list-answer">
					<p>Begin Vegan에서는 비회원은 주문이 불가합니다.</p>
				</div>
				<li class="want-list-QA">전화 주문도 가능한가요?</li>
				<div class="want-list-answer">
					<p>Begin Vegan에서는 비회원은 전화 주문이 불가합니다.</p>
				</div>
				<li class="want-list-QA">배송 일자를 지정할 수 있나요?</li>
				<div class="want-list-answer">
					<p></p>
				</div>
				<li class="want-list-QA">산간 지역도 배송이 가능하나요?</li>
				<div class="want-list-answer">
					<p></p>
				</div>
			</ul>
		</section>
		<script>
      $(".want-list-QA").on('click',function(){
        if($(this).next().css('display')=='none'){
          $(this).next().slideDown();
          $(this).next().siblings(".want-list-answer").slideUp();
          }else{
            $(this).next().slideUp();
          }
      });
    </script>

		<section id="notice-list">

			<button type="button" id="notice-more-button"
				onclick="location.href='noticeList.me'">더보기</button>
			<%if(loginUser!=null&&loginUser.getUserName().equals("운영자")){%>
			<button type="button" id="notice-write-button"
				onclick="location.href='noticeWrite.me'">글작성하기</button>
			<% }%>
			<div id="notice-list-title">공지 사항</div>
			<ul>
				<li><a href="#"><strong>(공지)</strong>공지 사항</a></li>
				<li><a href="#"><strong>(공지)</strong>공지 사항2</a></li>
				<li><a href="#">이벤트 공지사항</a></li>
				<li><a href="#">비긴 비건 공지사항</a></li>
				<li><a href="#">사용자 공지 사항</a></li>
				<li><a href="#">문의 사항 작성시 공지 사항</a></li>
				<li><a href="#">주문 폭주로 인한 공지 사항</a></li>
			</ul>
		</section>




		<section id="review">
			<div id="review-titlebar">
				<!-- <button type="button" id="review-button">후기 작성하기</button> -->
				<div id="review-title">상품 후기</div>
			</div>

			<div id="review-list">

				<div class="review-list-box">
					<div class="review-list-innerbox">
						<a href="#" style="background-image: url(img/logo.png);"></a>
					</div>
					<div class="review-list-text">
						<a href="#">제목 : 대박 이것만 먹어요<br>***eqw2(아이디)<br>새싹
							샐러드(상품정보)<br>2021-10-20
						</a>
					</div>
				</div>

				<div class="review-list-box">
					<div class="review-list-innerbox">
						<a href="#" style="background-image: url(img/logo.png);"></a>
					</div>
					<div class="review-list-text">
						<a href="#">제목 : 대박 이것만 먹어요<br>***eqw2(아이디)<br>새싹
							샐러드(상품정보)<br>2021-10-20
						</a>
					</div>
				</div>

				<div class="review-list-box">
					<div class="review-list-innerbox">
						<a href="#" style="background-image: url(img/logo.png);"></a>
					</div>
					<div class="review-list-text">
						<a href="#">제목 : 대박 이것만 먹어요<br>***eqw2(아이디)<br>새싹
							샐러드(상품정보)<br>2021-10-20
						</a>
					</div>
				</div>

				<div class="review-list-box">
					<div class="review-list-innerbox">
						<a href="#" style="background-image: url(img/logo.png);"></a>
					</div>
					<div class="review-list-text">
						<a href="#">제목 : 대박 이것만 먹어요<br>***eqw2(아이디)<br>새싹
							샐러드(상품정보)<br>2021-10-20
						</a>
					</div>
				</div>

			</div>
			<button type="button" id="review-more-button"
				onclick="location.href='<%=request.getContextPath()%>/reviewList.bo'">후기
				더보기</button>


		</section>
	</form>


</body>
</html>