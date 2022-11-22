<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="남상권"/>
	<meta name="Keywords" content="남상권, namsangkwon, 포트폴리오, 남상권 포트폴리오, portfolio, SanKwon's portfolio, 프로젝트, Project, 남 상권, 남 상 권, 상권 남, 상권, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="남상권의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">
   <title>글보기</title>
   <style>
     #tr_btn_modify{
       display:none;
       margin-top:100px;
     }
   
   </style>
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css"/>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-1.12.3.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>

</head>
<body>
	<%@ include file="../main/headerLogin.jsp" %>
	<section>
		<div id="section">
			<h2>
				<span class="hidden">고객상담</span>
			</h2>
			<h2>
				<span class="hidden">고객의소리</span>
			</h2>
			<h2>
				<span class="hidden">자주하는질문FAQ</span>
			</h2>
			<h2>
				<span class="hidden">상담원상담</span>
			</h2>
			<h2>
				<span class="hidden">1:1문의</span>
			</h2>
			<aside id="aside" class="fl cf">
				<ul class="customerCounseling">
					<li class="ccTitle"><a href="#" tabindex="1" class="ccTitle showTooltip" title="고객상담">&nbsp;&nbsp;고객상담</a></li>
					<li class="ccListFirst"><a href="#" tabindex="2" class="ccListFirst showTooltip" title="고객의소리">&nbsp;&nbsp;고객의소리</a></li>
					<li><a href="#" tabindex="3" class="ccList showTooltip" title="자주하는질문FAQ">&nbsp;&nbsp;자주하는질문FAQ</a></li>
					<li><a href="#" tabindex="4" class="ccListShort showTooltip" title="상담원상담">&nbsp;&nbsp;상담원상담</a></li>
					<li><a href="#" tabindex="5" class="ccList showTooltip" title="1:1문의">&nbsp;&nbsp;1:1문의</a></li>
				</ul>	<!-- class="passBtn" -->
			</aside>
			<article id="contents" class="fl cf" >
			<h3>
				<span class="hidden">자주묻는질문FAQ</span>
			</h3>
		<div id="high" class="fl cf">
			<ul class="path">
				<li class="pathColor showTooltip" title="자주묻는질문FAQ">&nbsp;고객의소리</li>
				<li><a class="showTooltip" href="#" tabindex="6" title="고객상담">&nbsp;고객상담 ></a> </li>
				<li><a class="showTooltip" href="#" tabindex="7" title="고객센터">고객센터 ></a></li>
			</ul>
			<div class="faq showTooltip" title="자주묻는 질문">고객의 소리</div>
			<ul class="description">
				<li class="descriptionFirst">고객님들의 목소리를 귀담아 듣겠습니다.</li>
				<li class="descriptionSecond">여기서 다 해결되지 않는 문의사항은 1:1문의를 이용해주세요.</li>
			</ul>
			<div class="inquiry"><a class="showTooltip" href="#" tabindex="8" title="1:1문의">1:1문의</a></div>
		</div>	
		<div id="middle" class="fl" style="height:100px;">
			<div class="search">
				<div class="fl">검색</div>
				<form>
					<input type="text" placeholder="검색"  class="fl searchInput"/>
				<!--<input type="submit" class="fl searchButton"/> -->
				</form>
			</div>
		</div>
		<div id="low" class="fl cf">
		  <form method="POST" action="/project03/delete">
	      	<div>
		  		<div class="viewNo">
			  		<div class="fl" align="right" margin-right= "5px">
				  		글번호
					</div>
					<div class="fl" border= "2px solid white">
					</div>
				</div>
				<div class="viewId fl">
					<div class="viewIdText">
						작성자
					</div>
					<div>
						<input type=text value="${data.writer }" name="writer"  disabled />
					</div>
				</div>
				<div class="viewTitle ellipsis fl">
					<div>
						<input type=text value="${data.title }"  name="title"  id="i_title" disabled />
					</div>   
				</div>
				<div class="viewContent">
					<div>
						<textarea rows="20" cols="60"  name="content"  id="i_content"  disabled />${data.content }</textarea>
					</div>  
				</div>
				<div class="viewDay fr">
					<div>
						최초등록일자
					</div>
					<div>
						<input type=text value="<fmt:formatDate value="${data.insert_date}" pattern="yyyy.MM.dd HH:mm:ss" />" disabled />
					</div>   
				</div>
				<div  id="tr_btn">
					<div colspan="2" align="center">
						<div><a href="/project03/update?num=${num}">수정하기</a></div>
						<div><a href="/project03/index">리스트로 돌아가기</a></div>
				    </div>
			    </div>       
			    <div style="float: right;">
		            <input type="hidden" name="num" value="${num}" />
		            <input type="submit" value="삭제" class="delete"/>
			   </div>
			</div>
		  </form>
		</div>
 	</section>
 	<%@ include file="../main/footer.jsp" %>
</body>
</html>