package kr.icia.conrtoller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.icia.domain.MemberVO;
import kr.icia.service.MemberService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	private MemberService memberservice;

	// @Setter(onMethod_ = @Autowired)
	@Inject
	BCryptPasswordEncoder passEncoder;
	// BCryptPasswordEncoder

	@RequestMapping(value = "/useridCk", method = RequestMethod.POST)
	@ResponseBody
	public String useridCk(String userid) throws Exception {
		logger.info("아이디 체크useridck:" + userid);
		int result = memberservice.useridCheck(userid);
		logger.info("받은값result:" + result);

		if (result != 0) {
			return "find";

		} else {
			return "avaliable";

		}
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void getSignup() {
		logger.info("get signup");
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String postSignup(MemberVO vo) throws Exception {
		logger.info("post signupdl");
		vo.setUserPass(passEncoder.encode(vo.getUserPass()));
		String userid = vo.getUserId();
		memberservice.signup(vo, userid);
		logger.info("post signup" + vo + userid);

		return "redirect:/";
	}

}