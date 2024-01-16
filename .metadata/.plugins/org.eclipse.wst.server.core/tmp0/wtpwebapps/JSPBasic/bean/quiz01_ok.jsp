<%@page import="com.example.bean.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // 1. 폼태그를 처리할 수 있는 bean을 선언합니다.
    // 2. 폼 값을 받아서 평균과 총점을 구합니다.
    // 3. quiz01_result 페이지로 이동해서
    // 학생정보와 평균, 총점을 모두 출력하세요.
    
    //조건 session 쓰지마세요.
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String kor = request.getParameter("kor");
    String math = request.getParameter("math");

    StudentVO svo = new StudentVO(id, pw, name, address, kor, math);
    
    request.setAttribute("svo", svo);
    
    request.getRequestDispatcher("quiz01_result.jsp").forward(request, response);
    
    
    
    
    %>
    
