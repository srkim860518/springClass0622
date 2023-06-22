<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %> 
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<h2>회원정보 수정</h2>
	<form action = "doupdateMForm" method="get" name = "mfrm">
			<label>아이디</label>
			<input type="text" name="id" value="${mdto.id }"><br>
			<label>패스워드</label>
			<input type="password" name="pw"value="${mdto.pw }"><br>
			<label>이름</label>
			<input type="text" name="name"value="${mdto.name }"><br>
			<label>성별</label><br>
			
			<c:if test="${mdto.gender=='male' }">
			<input type="radio" name="gender" id="male" value="male" checked>
			</c:if>
			<c:if test="${mdto.gender!='male' }">
			<input type="radio" name="gender" id="male" value="male" >
			</c:if>
			<label>남자</label>			
			<c:if test="${mdto.gender=='female' }">			
			<input type="radio" name="gender" id="male" value="female" checked>
			</c:if>
			<c:if test="${mdto.gender!='female' }">
			<input type="radio" name="gender" id="male" value="female" >
			</c:if>		
			<label>여자</label><br>
			
			<br>
			<label>취미</label><br>
			<c:if test="${fn:contains(mdto.hobby, 'game') }">
				<input type="checkbox" name="hobbys" id="game" value="game">
			</c:if>					
			<label for="game">게임</label>			
			<c:if test="${fn:contains(mdto.hobby, 'golf') }">
				<input type="checkbox" name="hobbys" id="golf" value="golf">
			</c:if>
			<label for="game">골프</label>
			<c:if test="${fn:contains(mdto.hobby, 'run') }">
				<input type="checkbox" name="hobbys" id="run" value="run">
				</c:if>
			<label for="game">조깅</label>
			<c:if test="${fn:contains(mdto.hobby, 'book') }">
				<input type="checkbox" name="hobbys" id="book" value="book">
				</c:if>
			<label for="game">독서</label>
			<c:if test="${fn:contains(mdto.hobby, 'swim') }">
				<input type="checkbox" name="hobbys" id="swim" value="swim">
				</c:if>
			<label for="game">수영</label>
				</c:if>				
			<br>
			<input type="submit" value="전송"><br>
		</form>
	
	</body>
</html>