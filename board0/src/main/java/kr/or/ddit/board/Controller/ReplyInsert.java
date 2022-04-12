package kr.or.ddit.board.Controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import kr.or.ddit.VO.ReplyVo;
import kr.or.ddit.board.Service.IReplyService;
import kr.or.ddit.board.Service.ReplyServiceImpl;



@WebServlet("/ReplyInsert.do")
public class ReplyInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ReplyVo vo = new ReplyVo();
		
		try {
			BeanUtils.populate(vo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		IReplyService service = ReplyServiceImpl.getInstance();
		
		int renum = service.insertReply(vo);
		request.setAttribute("renum", renum);
		
		request.getRequestDispatcher("work/replyinsert.jsp").forward(request, response);
		
		
	}

}
