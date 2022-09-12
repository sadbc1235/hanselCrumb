<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${ pageContext.request.contextPath }/view/css/petBoard.css">
</head>
<body>
	<!-- boardImg -->
  <div class="boardImg center">
    <div class="box center">
      <h2 class="boardName">보호중인 동물</h2>
      <div class="bar"></div>
      <p>
        반려동물도 주인을 그리워하며 기다릴거에요. <br>
        포기하지마세요!
      </p>
    </div>
  </div>
<!-- boardImg -->

<!-- cardBox -->
  <section class="cardBox">
    <div class="inner">
      <div class="cardHeader center">
        <div class="box center">
          <label>
            <input type="radio" name="petType" checked value="0"> 강아지
          </label>
          <label>
            <input type="radio" name="petType" value="0"> 고양이
          </label>
        </div>
        <a href="${ pageContext.request.contextPath }/board/petBoardForm" class="btn">
          글쓰기
        </a>
      </div>

      <div class="cardList">

        <a href="${ pageContext.request.contextPath }/board/petBoardInfo">
          <div class="card">
            <div class="cardImg">
              <img src="${ pageContext.request.contextPath }/view/images/dog/profile1.jpg" alt="img">
            </div>
            <ul class="cardInfo">
              <li>
                <span class="name">이름 :</span> 웃음이
              </li>
              <li>
                <span class="name">종류 :</span> 강아지
              </li>
              <li>
                <span class="name">성별 :</span> 남아
              </li>
              <li>
                <span class="name">특징 :</span> 귀여움
              </li>
              <li>
                <span class="name">발견장소 :</span> 인천 강화군 양도면 가능포로 166-13
              </li>
              <li>
                <span class="name">발견날짜 :</span> 2022-09-16
              </li>
              <li>
                <span class="name">작성일 :</span> 2022-09-16
              </li>
              <li>
                <span class="name">조회수 :</span> 99</li>
            </ul>
          </div>
        </a>

      </div>
    </div>
  </section>
<!-- cardBox -->

<!-- pagination -->
  <div class="modPage center">
    <div class="inner center">
      <a <c:if test="${ start >= 3}" >href="${ pageContext.request.contextPath }/board/adoptBoard?pageNum=${start-3}" class="active"</c:if>>&laquo;</a>
      <c:forEach var="p" begin="${ start }" end="${ end }">
      <a class="active" href="${ pageContext.request.contextPath }/board/adoptBoard?pageNum=${p}&petType=${petType}">${ p }</a>
      </c:forEach>
      <a <c:if test="${ end < maxPage }">href="${ pageContext.request.contextPath }/board/adoptBoard?pageNum=${end + 3}" class="active"</c:if>>&raquo;</a>
    </div>
  </div>
<!-- pagination -->
</body>
</html>