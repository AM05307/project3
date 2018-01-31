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

	// ȸ������
	@RequestMapping(value = "/insertres.sp", method = RequestMethod.POST)
	public String insertRes(UserVo user) {
		System.out.println("ȸ������");
		System.out.println(user.toString());
		if (userService.insertUser(user) == true) {
			return "/loginform.sp";
		}
		return "/WEB-INF/view/submit-property.jsp";
	}
	
	/*@RequestMapping(value="/IdCheck.sp", method=RequestMethod.POST)
	public ModelAndView idcheck(String userEmail) {
		System.out.println(userEmail + "�ߺ� ���̵� üũ");
		
		ModelAndView mav = new ModelAndView();
		if(userService.idcheck(userEmail)) {
			System.out.println("�ߺ��ƴ�");
		}else {
			System.out.println("�ߺ���");
		}
		return mav;
	}*/
	
	
	@RequestMapping(value = "/UserLogin.sp", method = RequestMethod.POST)
    public ModelAndView login(HttpSession session,String userEmail, String password1){
		System.out.println(userEmail + " ��Ʈ�ѷ��� ���� ��Ʈ�ѷ� ���");
		
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
