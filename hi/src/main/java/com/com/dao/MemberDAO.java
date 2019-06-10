package com.com.dao;

import org.springframework.stereotype.Repository;

import com.com.dto.CartVO;
import com.com.dto.MemberVO;

@Repository("memberdao")
public class MemberDAO extends AbstractDAO {
	//로그인
	public boolean login(MemberVO vo) {
		System.out.println(vo.getUserid());
		String name = (String)selectOne("member.login",vo);
		return (name == null) ? false : true;
	}
	//회원체크
	public MemberVO checkMember(MemberVO vo) {
		return (MemberVO) selectOne("member.checkMember",vo);
	}
	//회원가입
	public void register(MemberVO vo) throws Exception {
		selectOne("member.insertMember",vo);
	}
	//회원탈퇴
	public void delete (String userid) throws Exception {
		selectOne("member.delete",userid);
	}
	//아이디 중복체크
	public MemberVO idcheck(String userid) throws Exception{
		return (MemberVO) selectOne("member.idcheck",userid);
	}
	
}
