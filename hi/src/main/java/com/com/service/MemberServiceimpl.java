package com.com.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.springframework.stereotype.Repository;

import com.com.dao.MemberDAO;
import com.com.dto.CartVO;
import com.com.dto.MemberVO;

@Repository("selectservice")
public class MemberServiceimpl implements MemberService {
	
	private MemberDAO dao;
	
	@Resource(name="memberdao")
	MemberDAO memberdao;

	@Override
	public boolean login(MemberVO vo, HttpSession session) {
		boolean result = memberdao.login(vo);
		if (result == true) {
			MemberVO vo2 = checkMember(vo);
			session.setAttribute("id", vo2.getUserid());
			session.setAttribute("name", vo2.getUsername());
			session.setAttribute("address", vo2.getUseraddress());
			session.setAttribute("pw", vo2.getUserpw());
		}
		return result;
	}

	@Override
	public MemberVO checkMember(MemberVO vo) {
		return memberdao.checkMember(vo);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
	@Override
	public void register(MemberVO vo) throws Exception {
		memberdao.register(vo);
	}

	@Override
	public void delete(String userid) throws Exception {
		memberdao.delete(userid);
	}

	@Override
	public MemberVO idcheck(String userid) throws Exception {
		return memberdao.idcheck(userid);
	}
}
