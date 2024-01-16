<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 폼</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<form action="quiz01_ok.jsp" method="post">
    <label for="id">아이디:</label>
    <input type="text" name="id" required><br>

    <label for="pw">비밀번호:</label>
    <input type="password" name="pw" required><br>

    <label for="name">이름:</label>
    <input type="text" name="name" required><br>

    <label for="address">주소:</label>
    <input type="text" name="address" required><br>

    <label for="kor">국어:</label>
    <input type="text" name="kor" required><br>

    <label for="math">수학:</label>
    <input type="text" name="math" required><br>

    <input type="submit" value="확인">
</form>

</body>
</html>