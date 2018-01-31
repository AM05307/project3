package gosuic.controller.user;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.AlternativeJdkIdGenerator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import gosuic.biz.user.UserService;
import gosuic.vo.UserVo;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	// 회원가입
	@RequestMapping(value = "/insertres.sp", method = RequestMethod.POST)
	public String insertRes(UserVo user) {
		System.out.println("회원가입");
		System.out.println(user.toString());
		if (userService.insertUser(user) == true) {
			return "/loginform.sp";
		}
		return "/WEB-INF/view/submit-property.jsp";
	}
	
	/*@RequestMapping(value="/IdCheck.sp", method=RequestMethod.POST)
	public ModelAndView idcheck(String userEmail) {
		System.out.println(userEmail + "중복 아이디 체크");
		
		ModelAndView mav = new ModelAndView();
		if(userService.idcheck(userEmail)) {
			System.out.println("중복아님");
		}else {
			System.out.println("중복임");
		}
		return mav;
	}*/
	
	
	@RequestMapping(value = "/UserLogin.sp", method = RequestMethod.POST)
    public ModelAndView login(HttpSession session,String userEmail, String password1){
		System.out.println(userEmail + " 컨트롤러의 록인 컨트롤러 들옴");
		
        ModelAndView mav = new ModelAndView();
        if(userService.login(userEmail, password1)){
            session.setAttribute("userEmail", userEmail);
            mav.setViewName("redirect:/afterlogin.sp");
        }
        else{
            mav.setViewName("redirect:/loginform.sp");
        }
        return mav;
    }    
	


}
