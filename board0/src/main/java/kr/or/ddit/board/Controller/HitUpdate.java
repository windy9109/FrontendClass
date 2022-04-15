package kr.or.ddit.board.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.board.Service.BoardServiceImpl;
import kr.or.ddit.board.Service.IBoardService;

/**
 * Servlet implementation class HitUpdate
 */
@WebServlet("/HitUpdate.do")
public class HitUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HitUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		IBoardService service = BoardServiceImpl.getInstance();
		int res = service.updateHit(num);
		request.setAttribute("replyDelete",  res);
		
		request.getRequestDispatcher("work/result.jsp").forward(request, response);
		
		
	}

}
