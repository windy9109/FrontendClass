package kr.or.ddit.board.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.VO.ReplyVo;
import kr.or.ddit.board.Service.IReplyService;
import kr.or.ddit.board.Service.ReplyServiceImpl;

/**
 * Servlet implementation class ReplyUpdate
 */
@WebServlet("/ReplyUpdate.do")
public class ReplyUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int rnum = Integer.parseInt(request.getParameter("renum"));
		String cont = request.getParameter("cont");
		
		ReplyVo vo = new ReplyVo();
		vo.setRenum(rnum);
		vo.setCont(cont);
		
		IReplyService service = ReplyServiceImpl.getInstance();
		int res = service.updateReply(vo);
		
		request.setAttribute("replyDelete", res);
		request.getRequestDispatcher("work/result.jsp").forward(request, response);
		
	}

}
