package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dto.DetailpageDTO;
import service.DetailpageService;

//http://localhost:8090/myapp/list.do
//http://localhost:8090/myapp/detailpagemap.do

@Controller
public class DetailpageController {
	private DetailpageService service;
	private DetailpageDTO pv;

	public DetailpageController() {

	}
	public void setService(DetailpageService service) {
		this.service = service;
	}
	
	public void setPv(DetailpageDTO pv) {
		this.pv = pv;
	}

	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public ModelAndView listMethod(DetailpageDTO pv, ModelAndView mav) {
		this.pv = new DetailpageDTO();
		List<DetailpageDTO> aList = service.f_list(pv);
		mav.addObject("aList", aList);
		mav.setViewName("list");
		return mav;
	}// listMethod()

	@RequestMapping("/detailpage.do")
	public String detailpageMethod(HttpServletRequest httpServletRequest, Model model) {
		String latitude = httpServletRequest.getParameter("latitude");
		String longitude = httpServletRequest.getParameter("longitude");
		String foodtype = httpServletRequest.getParameter("foodtype");
		String img_url = httpServletRequest.getParameter("img_url");
		String foodstore_id = httpServletRequest.getParameter("foodstore_id");
		String foodstroe_num = httpServletRequest.getParameter("foodstroe_num");
		String road_name = httpServletRequest.getParameter("road_name");
		String rate = httpServletRequest.getParameter("rate");
		String openinghours = httpServletRequest.getParameter("openinghours");
		String menuNameSearch = httpServletRequest.getParameter("menuNameSearch");
		String menuPriceSearch = httpServletRequest.getParameter("menuPriceSearch");
		
		model.addAttribute("latitude", latitude);
		model.addAttribute("longitude", longitude);
		model.addAttribute("foodtype", foodtype);
		model.addAttribute("img_url", img_url);
		model.addAttribute("foodstore_id", foodstore_id);
		model.addAttribute("foodstroe_num", foodstroe_num);
		model.addAttribute("road_name", road_name);
		model.addAttribute("rate", rate);
		model.addAttribute("openinghours",openinghours);
		model.addAttribute("menuNameSearch",menuNameSearch);
		model.addAttribute("menuPriceSearch",menuPriceSearch);

		return "detailpage";
	}//detailpageMethod()
	
//	@GetMapping("/detailpage_aList/{res_num}")
//	@ResponseBody
//	public ModelAndView detailpageMethod(@PathVariable(required = false) Integer res_num, ModelAndView mav, DetailpageDTO pv) {
//		if(res_num == null)
//			res_num = 27584230;
//		this.pv = new DetailpageDTO();
//		List<DetailpageDTO> aList = service.f_list_match(res_num);
//		mav.addObject("aList", aList);
//		mav.setViewName("detailpage_aList");
//		return mav;
//	}
	
	
//	@RequestMapping(value = "/detailpage_aList.do")
//	public ModelAndView detailpageMethod(DetailpageDTO pv, @RequestParam("res_num") int res_num, ModelAndView mav) {
//		this.pv = new DetailpageDTO();
//		List<DetailpageDTO> aList = service.f_list_match(res_num);
//		mav.addObject("aList", aList);
//		mav.setViewName("detailpage_aList");
//		return mav;
//	}//detailpageMethod()
	
//	@RequestMapping("/detailpage_listmatch.do")
//	public ModelAndView listmatchMethod(@RequestParam("res_num") String res_num, ModelAndView mav) {
//		List<DetailpageDTO> data = service.f_list_match(res_num);
//		mav.addObject("data", data);
//		mav.addObject("res_num", res_num);
//		mav.setViewName("detailpage_listmatch");
//		return mav;
//	}//listmatchMethod()
	
//	@RequestMapping("/detailpage_listmatch.do")
//	public ModelAndView listmatchMethod(HttpServletRequest httpServletRequest, ModelAndView mav) {
//		String res_num = httpServletRequest.getParameter("res_num");
//		List<DetailpageDTO> data = service.f_list_match(res_num);
//		mav.addObject("data", data);
//		mav.addObject("res_num", res_num);
//		mav.setViewName("detailpage_listmatch");
//		return mav;
//	}//listmatchMethod()
}