package kr.or.ddit.board.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.board.Service.IReplyService;
import kr.or.ddit.board.Service.ReplyServiceImpl;


@WebServlet("/ReplyDelete.do")
public class ReplyDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ReplyDelete() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rnum = Integer.parseInt(request.getParameter("renum"));
		IReplyService service = ReplyServiceImpl.getInstance();
		
		int res = service.deleteReply(rnum);
		
		request.setAttribute("replyDelete", res);
		request.getRequestDispatcher("work/result.jsp").forward(request, response);
		
	}

}
