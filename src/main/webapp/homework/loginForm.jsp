<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">    
    <style>      
        #body_contents {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            height: 100%;
        }          
        #loginBox {
            width: 300px;
            text-align: center;
            background-color: #ffffff;
        }
        .input-form-box {
            border: 0px solid #ff0000;
            display: flex;
            margin-bottom: 5px;
        }
        .input-form-box > span {
            display: block;
            text-align: left;
            padding-top: 5px;
            min-width: 65px;
        }
        .button-login-box {
            margin: 10px 0;
        }
        #loginBoxTitle {
            color:#000000;
            font-weight: bold;
            font-size: 32px;
            text-transform: uppercase;
            padding: 5px;
            margin-bottom: 20px;
            background: linear-gradient(to right, #270a09, #8ca6ce);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        #inputBox {
            margin: 10px;
        }
        #inputBox button {
            padding: 3px 5px;
        }
    </style>
    <script>
        function validateForm(form) {
            if (!form.user_id.value) {
                alert("아이디를 입력하세요.");
                form.user_id.focus();
                return false;
            }
            if (form.user_pw.value == "") {
                alert("패스워드를 입력하세요.");
                form.user_pw.focus();
                return false;
            }
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row">
        <!-- 상단 네비게이션 인클루드 -->
        <%@ include file="./inc/top.jsp" %>
    </div>
    <div class="row">
        <!-- 좌측메뉴 -->
        <%@ include file="./inc/left.jsp" %>
        <div class="col-9 pt-3" id="body_contents">
            <!--  login 폼 영역을 : loginBox -->
            <div id="loginBox">
            <form action="LoginProcess.jsp" method="post" name="loginFrm"
                onsubmit="return validateForm(this);">
                <!-- 로그인 페이지 타이틀 -->
                <div id="loginBoxTitle">Tjoeun Login</div>
                <!-- 아이디, 비번, 버튼 박스 -->
                <div id="inputBox">
                    <div class="input-form-box">
                        <span>아이디 </span>
                        <input type="text" name="user_id" class="form-control">
                    </div>
                    <div class="input-form-box">
                        <span>비밀번호 </span>
                        <input type="password" name="user_pw" class="form-control">
                    </div>
                    <div class="button-login-box" >
                        <button type="submit" class="btn btn-danger btn-xs" style="width:100%">로그인</button>
                    </div>
                </div>
            </form>
            </div>       
        </div>
    </div>
    <div class="row border border-dark border-bottom-0 border-right-0 border-left-0"></div>
    <div class="row mb-5 mt-3">
        <%@ include file="./inc/bottom.jsp" %>
    </div>
</div>
</body>
</html>