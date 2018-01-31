package gosuic.controller.menu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import gosuic.biz.user.UserService;

@Controller
public class PropertyController {

	@Autowired
	private UserService userService;
	
	// ��ü ����ϱ�
		@RequestMapping("/list.sp")
		public String all_list(Model model) {
			model.addAttribute("all_list", userService.listUser());
			System.out.println("�Ź���� ���");
			return "/WEB-INF/view/list.jsp";
		}


}
