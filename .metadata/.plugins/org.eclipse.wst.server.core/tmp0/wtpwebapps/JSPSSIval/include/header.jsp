
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>


    <meta charset="UTF-8">
    <title>제이오더</title>
    <style>
        body,HTML {
        	height : 100%
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        div {
            text-align: center;
            margin-top: 50px;
        }
        
        .mainbody{
        	height: calc(100%)
        
        }
        
        
        table {
    		margin: auto;
		}

        h3 {
            color: #333;
        }

        hr {
            border: 1px solid #333;
            width: 80%;
            margin: 10px auto;
        }

        li {
            display: inline-block;
            margin: 0 10px;
        }

        a {

            text-decoration: none;
            color: #333;
            font-weight: bold;
            font-size: 16px;
        }

        a:hover {
            color: red;
        }
        
        textarea {  
            resize:none;
        }

    </style>
</head>

<body>
    <div>
        <a href="${pageContext.request.contextPath }" ><h1>제이오더</h1></a>
        <hr>
        	<li><a href="${pageContext.request.contextPath }/list.board">BOARD</a></li>
        <c:choose>
            <c:when test="${sessionScope.user_id == null }">
                <li><a href="${pageContext.request.contextPath }/login.user">LOGIN</a></li>
                <li><a href="${pageContext.request.contextPath }/join.user" style="color: red">JOIN</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="${pageContext.request.contextPath }/logout.user">LOGOUT</a></li>
                <li><a href="${pageContext.request.contextPath }/mypage.user" style="color: red">MYPAGE</a></li>
            </c:otherwise>
        </c:choose>
        <hr>