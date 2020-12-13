package com.my.app.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.app.user.UserService;
import com.my.app.user.UserVO;


@Controller
public class BoardController{
	
	
	
	@Autowired
	BoardService boardService;
	UserService userService;
	
	
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String boardlist(Model model, UserVO vo) {
		model.addAttribute("tlist",boardService.getBoardList());
		return "list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addPost() {
		return "addpostforteacher";
	}
	
	@RequestMapping(value="/addok",method = RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		boardService.insertBoard(vo);
		return "redirect:list";
	}
	
	@RequestMapping(value="/editform/{id}",method= {RequestMethod.GET, RequestMethod.POST})
	public String editPost(@PathVariable("id")int id, Model model) {
		BoardVO boardVO=boardService.getBoard(id);
		model.addAttribute("u",boardVO);
		return "editform";
	}
	
	@RequestMapping(value="/editok",method=RequestMethod.POST)
	public String editPostOK(BoardVO vo) {
		if(boardService.updateBoard(vo)==0) {
			System.out.println("데이터수정실패");
		}
		else System.out.println("데이터수정 성공");
		
		return "redirect:list";
	}
	
	@RequestMapping(value="/deleteok/{id}",method=RequestMethod.GET)
	public String deletePostOK(@PathVariable("id")int id) {
		if(boardService.deleteBoard(id)==0)
			System.out.println("삭제 실패");
		else
			System.out.println("삭제 성공");
		
		return "redirect:../list";
	}
	
	
	@RequestMapping(value="/choose",method=RequestMethod.GET)
	public String choose() {
		return "choose";
	}
	
	@RequestMapping(value="/teachdetail/{id}",method= {RequestMethod.GET, RequestMethod.POST})
	public String teachdetail(@PathVariable("id")int id, Model model) {
		BoardVO boardVO=boardService.getBoard(id);
		model.addAttribute("u",boardVO);
		return "teachdetail";
	}
	
	@RequestMapping(value="/tlist",method=RequestMethod.GET)
	public String sboardlist(Model model, UserVO vo) {
		model.addAttribute("slist",boardService.getBoardLists());
		return "tlist";
	}
	
	
	@RequestMapping(value="/adds",method=RequestMethod.GET)
	public String addPosts() {
		return "addpostforstudent";
	}
	
	@RequestMapping(value="/addoks",method = RequestMethod.POST)
	public String addPostOKs(BoardVO vo) {
		boardService.insertBoards(vo);
		return "redirect:tlist";
	}
	
	@RequestMapping(value="/studentdetail/{id}",method= {RequestMethod.GET, RequestMethod.POST})
	public String studentdetail(@PathVariable("id")int id, Model model) {
		BoardVO boardVO=boardService.getBoards(id);
		model.addAttribute("s",boardVO);
		return "studentdetail";
	}
	
	@RequestMapping(value="/editforms/{id}",method= {RequestMethod.GET, RequestMethod.POST})
	public String editPosts(@PathVariable("id")int id, Model model) {
		BoardVO boardVO=boardService.getBoards(id);
		model.addAttribute("u",boardVO);
		return "editforms";
	}
	
	
	@RequestMapping(value="/editoks",method=RequestMethod.POST)
	public String editPostOKs(BoardVO vo) {
		if(boardService.updateBoards(vo)==0) {
			System.out.println("데이터수정실패");
		}
		else System.out.println("데이터수정 성공");
		
		return "redirect:tlist";
	}
	
	@RequestMapping(value="/deleteoks/{id}",method=RequestMethod.GET)
	public String deletePostOKs(@PathVariable("id")int id) {
		if(boardService.deleteBoards(id)==0)
			System.out.println("삭제 실패");
		else
			System.out.println("삭제 성공");
		
		return "redirect:../tlist";
	}
}