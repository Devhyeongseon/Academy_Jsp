<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/*  
			css문법이 들어갈 수 있습니다.
			클래스는 .선택자로 지칭합니다.
			id 는 # 선택자로 지칭합니다.
		
		*/
html, body{
	display: flex;
	flex-direction : column;
	justify-content: center;
	align-items: center;
	height: 100%;
	width : 100%
}

.form-content {
	height: 300px;
	width : 300px;
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
	padding: 10px;
}
</style>
</head>
<body>

	<%--
	1. form태그를 이용해서 post형식으로 이름, 국어, 영어, 수학점수을 받습니다.
	2. quiz01_result.jsp로 데이터를 넘겨서 평균을 구합니다.
	3. 60점 이상 이하여부에 따라서 합격, 불합격페이지로 리다이렉트
	--%>

	<!-- 디자인
		태그에는 id(화면에서 고유)라는 속성과 class(화면에 여러개있어도됨)
		라는 속성이 있다.
		
		디자인하는방법 3가지
		1. css파일 만들고 import해서 사용하는법(외부스타일시트)
		2. head태그에 선택자를 이용해서 디자인 하는방법.(내부스타일시트)
		3. 태그자체에 직접디자인을 하는방법.(인라인시트)
	  -->

	<form action="Quiz01_result.jsp" method="post" class="form-content">
		
		<h3 style="text-align: center;">과제</h3>
		이름:<input type="text" name="name"><br> 
		국어:<input type="number" name="sc1" class="form-control"><br>
		영어:<input type="number" name="sc2" class="form-control"><br>
		수학:<input type="number" name="sc3" class="form-control"><br>
		<input type="submit" name="확인" style="display: block; width:100%; color: red; margin-top: 10px;"><br>
	</form>

</body>
</html>