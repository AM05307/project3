package gosuic.controller.menu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MenuController {

	// �Է���������
	@RequestMapping("/insert.sp")
	public String insertpage() {
		System.out.println("ȸ������ ������ �̵���");
		return "/WEB-INF/view/submit-property.jsp";
	}

	// �α��� ��������
	@RequestMapping("/loginform.sp")
	public String loginForm() {
		System.out.println("�α���������");
		return "/WEB-INF/view/register.jsp";
	}

	// ���� ��������
	@RequestMapping("/mainform.sp")
	public String mainForm() {
		System.out.println("���� ȭ������");
		return "/WEB-INF/view/main.jsp";
	}

	// �α����� ����������
	@RequestMapping("/afterlogin.sp")
	public String afterlogin() {
		System.out.println("�α����� ����");
		return "/WEB-INF/view/afterlogin.jsp";
	}

		@RequestMapping("/properties.sp")
	public String Property() {
		System.out.println("[MenuController] Property() �� �Ź�");
		return "/WEB-INF/view/property.jsp";
	}
}// class end
