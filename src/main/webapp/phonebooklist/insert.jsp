<%@page import="com.example.phonebook.vo.PhoneBookVO"%>
<%@page import="com.example.phonebook.dao.PhoneBookDAOImpl"%>
<%@page import="com.example.phonebook.dao.PhoneBookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//	파라미터 받아오기
	String Name = request.getParameter("Name");
	String Hp = request.getParameter("hp");
	String Tel = request.getParameter("tel");
	//	파라미터 확인
	//	DAO
	PhoneBookDAO dao = new PhoneBookDAOImpl();
	
	//	Vo 객체 생성
	PhoneBookVO vo = new PhoneBookVO();
	vo.setName(Name);
	vo.setHp(Hp);
	vo.setTel(Tel);
	
	dao.insert(vo);
	
	//	index.jsp로 리다이렉트(페이지 전환: 302)
	response.sendRedirect(request.getContextPath() + "/PhoneBooklist/");
%>