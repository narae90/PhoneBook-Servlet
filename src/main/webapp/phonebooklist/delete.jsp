<%@page import="com.example.phonebook.dao.PhoneBookDAO"%>
<%@page import="com.example.phonebook.dao.PhoneBookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//파라미터 받기
	Long pk = Long.valueOf(request.getParameter("Id"));	
	// Dao 불러오기
	PhoneBookDAO dao = new PhoneBookDAOImpl();
	// 삭제
	dao.delete(pk);
	
	
	//index.jsp로 리다이렉트
	response.sendRedirect(request.getContextPath() + "/PhoneBooklist/");

%>