

package kr.icia.service;

import kr.icia.domain.MemberVO;

public interface MemberService {

	public int useridCheck(String userid) throws Exception;

	public void signup(MemberVO vo, String userid) throws Exception;

	




}
