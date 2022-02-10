package kr.icia.service;

import javax.annotation.Resource;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.icia.conrtoller.MemberController;
import kr.icia.domain.MemberVO;
import kr.icia.mapper.BoardMapper;
import kr.icia.mapper.memberMapper;
import kr.icia.persistence.MemberDAO;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Service("memberService")
@Log4j
public class MemberServiceImp implements MemberService {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Setter(onMethod_ = @Autowired)
	private memberMapper membermapper;
	


	
	@Override
	public int useridCheck(String userid) throws Exception{
		log.info("값이 가는지 확인 "+userid);
		return membermapper.useridCheck(userid);	
	}

	@Override
	public void signup(MemberVO vo, String userid) throws Exception {
	membermapper.signup(vo);
	membermapper.memberAuth(userid);
	}


	


}
