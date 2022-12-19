<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원제 게시판</title>
</head>
<body>
	<!-- 공통링크 -->
    <jsp:include page="../Common/Link.jsp" />  
	
	<!-- 앞에서 계산해둔 전체페이지수와 파라미터를 통해 얻어온 현재
	페이지번호를 출력한다.  -->
    <h2>목록 보기(List)-Paging기능추가
    	-현재 페이지:xxx  (전체:xxx)</h2>
    <!-- 검색폼 --> 
    <form method="get">  
    <table border="1" width="90%">
    <tr>
        <td align="center">
            <select name="searchField"> 
                <option value="title">제목</option> 
                <option value="content">내용</option>
            </select>
            <input type="text" name="searchWord" />
            <input type="submit" value="검색하기" />
        </td>
    </tr>   
    </table>
    </form>
    <!-- 게시물 목록 테이블(표) --> 
    <table border="1" width="90%">
        <!-- 각 칼럼의 이름 --> 
        <tr>
            <th width="10%">번호</th>
            <th width="50%">제목</th>
            <th width="15%">작성자</th>
            <th width="10%">조회수</th>
            <th width="15%">작성일</th>
        </tr>
        <!-- 목록의 내용 --> 
<%

%>
        <tr>
            <td colspan="5" align="center">
                등록된 게시물이 없습니다^^*
            </td>
        </tr>
<%
 
%>
<tr align="center">
	<!-- 게시물의 가상번호 -->
    <td>xxx</td>
    <!-- 제목 -->   
    <td align="left"> 
        <a href="View.jsp?num=xxx">xxx</a> 
    </td>
    <!-- 작성자 아이디 -->
    <td align="center">xxxx</td>
    <!-- 조회수 -->     
    <td align="center">xxxx</td>
    <!-- 작성일 -->  
    <td align="center">xxx</td>  
</tr>
<%

%>
    </table>
    <table border="1" width="90%">
        <tr align="right">
        	<td>
        		<!--  
        		totalCount : 전체 게시물의 갯수
        		pageSize : 한페이지에 출력할 게시물의 갯수
                blockPage : 한블럭당 출력할 페이지번호의 갯수
                pageNum : 현재 페이지 번호
                request.getRequestURI() : request내장객체를 통해 현재 페이지의 
               		HOST를 제외한 나머지 경로명을 얻어올 수 있다. 여기서 얻은
               		경로명을 통해 "경로명.jsp?pageNum=페이지번호"와 같은 
               		바로가기 링크를 생성한다. 
        		-->
        		              
        	</td>
            <td><button type="button" onclick="location.href='Write.jsp';">글쓰기
                </button></td>
        </tr>
    </table>
</body>
</html>
