package kr.icia.mapper;

import java.util.List;


import kr.icia.domain.MemberVO;

public interface memberMapper {
	
	public List<MemberVO> getList();
	
	public void insert(MemberVO vo);
	
	public MemberVO read(Long vno);
	
	public int delete(Long vno);
	
	public int update(MemberVO voard);

	public void signup(MemberVO vo);

	public void memberAuth(String userid);

	public int useridCheck(String userid);
	
	
}
