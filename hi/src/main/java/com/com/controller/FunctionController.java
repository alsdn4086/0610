package com.com.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.com.dto.CartVO;
import com.com.dto.CartlistVO;
import com.com.dto.MemberVO;
import com.com.dto.ProductVO;
import com.com.service.ProductService;
import com.com.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class FunctionController {

	private static final Logger logger = LoggerFactory.getLogger(FunctionController.class);
	@Resource(name="selectservice")
	MemberService  memberservice;
	@Resource(name="ProductService")
	ProductService productservice;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	// 로그인
	@RequestMapping(value = "login.do")
	public ModelAndView loginCheck(MemberVO vo, HttpSession session) {
		System.out.println(vo.getUserid() + vo.getUserpw());
		boolean result = memberservice.login(vo, session);
		ModelAndView mv = new ModelAndView();
		if (result == true) {
			mv.setViewName("redirect:/");
		} else {
			mv.setViewName("loginpage");
			mv.addObject("msg","fail");
		}
		return mv;
	}
	// 로그아읏
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		return mv;
	}
	
	// 회원가입
	  @RequestMapping(value = "join.do", method = RequestMethod.POST) 
	  public String join(MemberVO vo) throws Exception {
		  System.out.println(vo.toString());
		  memberservice.register(vo);
	  
		  return "redirect:/"; 
	  
	  }
	  
	// 상품 구매페이지
	  @RequestMapping(value = "product.do", method = RequestMethod.GET) 
	  public String product(Model model,String prodnum) throws Exception {
		  ProductVO list = productservice.prodlist(prodnum);
		  
		  model.addAttribute("list",list);
		  return "prodlist";
	  }

	  //카트 담기
	  @ResponseBody
	  @RequestMapping(value="addcart.do", method = RequestMethod.POST) 
	  public void addcart(CartVO cart, HttpSession session)throws Exception{
		  
		  String member = (String)session.getAttribute("id");
		  cart.setUserid(member);
		  
		 productservice.addcart(cart);
	  }

	// 카트 목록
	@RequestMapping(value = "cartlist.do", method = RequestMethod.GET)
	public ModelAndView getcartlist(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("cartlist");
		String Member = (String) session.getAttribute("id");
		ArrayList<CartlistVO> cartlist = new ArrayList<CartlistVO>();
		cartlist =  (ArrayList<CartlistVO>) productservice.cartlist(Member);
		mv.addObject("list",cartlist);
		return mv;
	}

	//회원탈퇴
	@RequestMapping(value = "delete.do", method = RequestMethod.POST)
	public String userdelete(HttpSession session) throws Exception {
	String userid = (String)session.getAttribute("id");
	memberservice.delete(userid);
	session.invalidate();
	return "redirect:/";
	}
	//아이디 중복체크
	@ResponseBody
	@RequestMapping(value="idcheck.do", method = RequestMethod.POST)
	public int idcheck(HttpServletRequest req) throws Exception {
		logger.info("idcheck");
		String userid = req.getParameter("userid");
		MemberVO idcheck = memberservice.idcheck(userid);
		
		int result = 0;
		
		if(idcheck != null) {
			result = 1;
		}
		return result;
	}
}