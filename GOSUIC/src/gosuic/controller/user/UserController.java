package gosuic.controller.user;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.AlternativeJdkIdGenerator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	// �α���
	@RequestMapping(value = "/UserLogin.sp", method = RequestMethod.POST)
    public ModelAndView login(HttpSession session,String userEmail, String password1){
		System.out.println(userEmail + " ��Ʈ�ѷ��� ���� ��Ʈ�ѷ� ���");
		
        ModelAndView mav = new ModelAndView();
        if(userService.login(userEmail, password1)){
            session.setAttribute("userEmail", userEmail);
            mav.setViewName("redirect:/mainform.sp");
        }
        else{
            mav.setViewName("redirect:/loginform.sp");
        }
        return mav;
    }    
	
	// ���̵� �ߺ�üũ
		@ResponseBody
		@RequestMapping(value="/CheckId.sp",method =RequestMethod.POST)
		public String checkId(HttpServletRequest request, Model model) {
			String userEmail= request.getParameter("userEmail");
			System.out.println("checkid cont" + userEmail);
			int row = userService.checkID(userEmail);
			System.out.println("��Ʈ�ѷ�" + row +":" + userEmail);
			
			return String.valueOf(row);
			
		}
	


}
