package com.kh.dungjip.member.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dungjip.estate.model.vo.Estate;
import com.kh.dungjip.member.model.vo.Member;

@Repository
public class MemberDao {
	
	//로그인
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	//아이디 중복체크 (임대인/임차인)
	public int ajaxIdMethod(SqlSessionTemplate sqlSession, String userId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.ajaxIdMethod", userId);
	}

	//회원가입 메소드 (임대인/임차인)
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	//회원가입 메소드(사용자 폼에 추가)
	public int esInsertMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.insert("memberMapper.esInsertMember", m);
	}

	//아이디 중복체크(중개인)
	public int esajaxIdMethod(SqlSessionTemplate sqlSession, String userId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.esajaxIdMethod", userId);
	}

	//회원가입 메소드(중개인 폼에 추가)
	public int insertEsMember(SqlSessionTemplate sqlSession, Estate e) {
		// TODO Auto-generated method stub
		return sqlSession.insert("memberMapper.insertEsMember", e);
	}


	//userId를 이용하여 uno데리고오기
	public int userNum(SqlSessionTemplate sqlSession, String userId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.userNum", userId);
	}

	//번호 중복체크(중개인)
	public int exajaxphoneMethod(SqlSessionTemplate sqlSession, String phone) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.exajaxphoneMethod", phone);
	}

	//번호 중복체크(임대인/임차인)
	public int ajaxphoneMethod(SqlSessionTemplate sqlSession, String phone) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.ajaxphoneMethod", phone);
	}

	//아이디 찾기 
	public Member memberFindId(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.memberFindId", m);
	}

	//비밀번호 찾기 
	public int memberFindPwd(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("memberMapper.memberFindPwd", m);
	}

	//새로 발급받은 비밀번호 update
	public void updateMemberPwd(SqlSessionTemplate sqlSession,Member m) {
		// TODO Auto-generated method stub
		sqlSession.update("memberMapper.updateMemberPwd",m);
	}

	//회원 탈퇴
	public int memberDelete(SqlSessionTemplate sqlSession, String userId) {
		// TODO Auto-generated method stub
		return sqlSession.delete("memberMapper.memberDelete", userId);
	}

	//비밀번호 변경
	public int memberPwdUpdate(SqlSessionTemplate sqlSession,Member member) {
		
    		Map<String, Object> mpwd = new HashMap<>();
    		mpwd.put("member", member);

	    return sqlSession.update("memberMapper.memberPwdUpdate", member);	
	}

	//회원 정보 수정 
	public int mypageUpdate(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("memberMapper.mypageUpdate", m);
	}

	

	

	


	
	
	


}
