package kr.icia.persistence;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.icia.domain.MemberVO;
import kr.icia.mapper.memberMapper;
import lombok.Setter;

@Repository
public class MemberDAOImp implements MemberDAO {
	
	
	
	@Override
	public void signup(MemberVO vo) {
		
		
	}

	

	@Override
	public void mameberAuth(String userid) {
		
		
	}



	@Override
	public int checkidCheck(String userid) {
		
		return 0;
	}








}
