package com.example.phonebook.dao;

import java.util.List;

import com.example.phonebook.vo.PhoneBookVO;

public interface PhoneBookDAO {
	public List<PhoneBookVO> getList();	//	1.리스트
	public int insert(PhoneBookVO vo);	//	2.등록
	public int delete(Long id);	//	3.삭제
	public List<PhoneBookVO> search(String keyword);	//	4.검색 목록
//	public PhoneBookVO get(Long id);	//	정보 확인
	
	

}


