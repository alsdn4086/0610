package com.com.service;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.compiler.ast.Member;

import com.com.dto.CartVO;
import com.com.dto.MemberVO;

public interface MemberService {
	//로그인
	public boolean login(MemberVO vo, HttpSession session);
	
	//회원체크
	public MemberVO checkMember(MemberVO vo);
	
	//로그아웃
	public void logout(HttpSession session);
	
	//회원가입
	public void register(MemberVO vo) throws Exception;
	
	//회원탈퇴
	public void delete(String userid) throws Exception;
	
	//아이디 중복체크
	public MemberVO idcheck(String userid) throws Exception;
}