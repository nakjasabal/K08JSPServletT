<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<meta charset="UTF-8">
<head><title>표현 언어(EL) - 객체 매개변수</title></head>
<body>
    <%
    //세가지의 객체를 request영역에 저장한다. 
    request.setAttribute("personObj", new Person("홍길동", 33));
    request.setAttribute("stringObj", "나는 문자열");
    request.setAttribute("integerObj", new Integer(99));
    %>
    <!--  
    액션태그를 통해 포워드 한다. 이때 2개의 정수를 파라미터로 전달한다.
    -->
    <jsp:forward page="ObjectResult.jsp" >
        <jsp:param value="10" name="firstNum" /> 
        <jsp:param value="20" name="secondNum" />
    </jsp:forward>
</body>
</html>



