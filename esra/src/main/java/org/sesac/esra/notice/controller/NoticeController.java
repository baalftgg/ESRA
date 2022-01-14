package org.sesac.esra.notice.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.sesac.esra.notice.vo.NoticeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class NoticeController {
	
	String ns = "org.sesac.config.mappers.notice";
	
	@Autowired
	private SqlSession session;
	
	@RequestMapping("/notice/list")
	public String notice_list(Model model) {
		
		List<NoticeVo> list = session.selectList(ns+".list");
		model.addAttribute("notice_list", list);
		return "notice/list";
	}
	
	@RequestMapping("/notice/insert_form")
	public String notice_insert_form() {
		
		return "notice/insert_form";
	}
	
	@RequestMapping("/notice/insert_action")
	public String notice_insert_action(NoticeVo vo) {
		
		session.insert(ns+".write", vo);
		
		return "redirect:/notice/list";
	}
	
	@RequestMapping("/notice/detail")
	public String notice_detail(@RequestParam("no") int no, Model model) {
		NoticeVo vo = session.selectOne(ns+".detail", no);
		model.addAttribute("detail", vo);
		
		return "notice/detail";
	}
	
	@RequestMapping("/notice/update_form")
	public String notice_update_form(@RequestParam("no") int no, Model model) {
		NoticeVo vo = session.selectOne(ns+".detail", no);
		model.addAttribute("detail", vo);
		
		return "notice/update_form";
	}
	
	@RequestMapping("/notice/update_action")
	public String notice_update_action(NoticeVo vo) {
		session.update(ns+".update", vo);
		
		return "redirect:/notice/list";
	}
	
	@RequestMapping("/notice/delete_action")
	public String notice_delete_action(@RequestParam("no") int no) {
		session.delete(ns+".delete", no);
		
		return "redirect:/notice/list";
	}
}
