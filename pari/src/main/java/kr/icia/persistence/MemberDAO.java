package kr.icia.persistence;

import kr.icia.domain.MemberVO;

public interface MemberDAO {
	public void signup(MemberVO vo);
	public void mameberAuth(String userid);
	public int checkidCheck(String userid);

	
}