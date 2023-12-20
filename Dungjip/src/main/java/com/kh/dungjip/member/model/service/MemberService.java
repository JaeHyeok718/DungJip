package com.kh.dungjip.member.model.service;

import com.kh.dungjip.estate.model.vo.Estate;
import com.kh.dungjip.member.model.vo.Member;

public interface MemberService {
	
	//로그인 처리 
	Member loginMember(Member m);

	//아이디 중복체크 (임대인/임차인)
	int ajaxIdMethod(String userId);

	
	//회원가입 메소드 (임대인/임차인)
	int insertMember(Member m);

	//회원가입 메소드 (사용자폼에추가)
	int esInsertMember(Member m);

	//아이디 중복체크(중개인)
	int esajaxIdMethod(String userId);
	
	//번호 중복체크 (중개인)
	int exajaxphoneMethod(String phone);
	
	//회원가입 메소드 (중개인폼추가)
	int insertEsMember(Estate e);

	//userId를 이용해서 uno 데이고오기
	int userNum(String userId);

	//번호 중복체크 (임대인/임차인)
	int ajaxphoneMethod(String phone);

	//아이디 찾기
	Member memberFindId(Member m);

	//비밀번호 찾기 
	int memberFindPwd(Member m);

	//새로 부여받은 비밀번호 update 
	void updateMemberPwd(Member m);

	int userSubscribe(int userNo);

	


	



	


}
