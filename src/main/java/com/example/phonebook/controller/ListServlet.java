package com.example.phonebook.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.example.phonebook.dao.PhoneBookDAO;
import com.example.phonebook.dao.PhoneBookDAOImpl;
import com.example.phonebook.vo.PhoneBookVO;


@WebServlet("/pb")

public class ListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 파라미터 확인
		// a=form이면 등록폼으로 FORWARD
		String actionName = req.getParameter("a");
		
		if("form".equals(actionName)) {
			// a=form이면
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/views/phonebooklist/form.jsp");
			// 전달
			rd.forward(req, resp);
			
		} else {
		// DAO에서 목록을 받아서 jsp로 전달
		PhoneBookDAO dao = new PhoneBookDAOImpl();
		List<PhoneBookVO> list = dao.getList();
		
		// 요청에 list를 추가
		// list 객체를 list 키로 추가
		req.setAttribute("list", list);
		//JSP로 요청을 전달 (FORWARD)
		
		//Dispatcher 확보
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/views/phonebooklist/index.jsp");
		// FORWARD
		rd.forward(req, resp);
		}
		
		
	}

	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String actionName = req.getParameter("a");
		
		if("add".equals(actionName)){ // a= add
			String Name = req.getParameter("name");
			String Hp = req.getParameter("hp");
			String Tel = req.getParameter("tel");
			
			// VO 객체 생성
			PhoneBookVO vo = new PhoneBookVO();
			vo.setName(Name);
			vo.setHp(Hp);
			vo.setTel(Tel);
			
			// insert 처리
			PhoneBookDAO dao = new PhoneBookDAOImpl();
			boolean insertedCount = dao.insert(vo);
			
			// 처리후 list페이지로 리다이렉트
			resp.sendRedirect(req.getContextPath() + "/pb");
		} else if("delete".equals(actionName)) {
			//a=delete
			Long Id = Long.valueOf(req.getParameter("Id"));
			
			PhoneBookDAO dao = new PhoneBookDAOImpl();
			int deletedCount = dao.delete(Id);
			
			// 리스트 페이지로 리다이렉트
			resp.sendRedirect(req.getContextPath() + "/pb");
		
		} else {
			doGet(req,resp);
		}
		
	}



}

