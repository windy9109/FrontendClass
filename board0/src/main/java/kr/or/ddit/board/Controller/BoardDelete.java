package kr.or.ddit.board.Controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.board.Service.BoardServiceImpl;
import kr.or.ddit.board.Service.IBoardService;

/**
 * Servlet implementation class BoardDelete
 */
@WebServlet("/BoardDelete.do")
public class BoardDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardDelete() {
        super();
        // TODO Auto-generated constructor stub
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int rqnum = Integer.parseInt(request.getParameter("num"));
		int rqpage = Integer.parseInt(request.getParameter("page"));
		
		String rqtype = request.getParameter("type");
		String rqword = request.getParameter("word");
		
		IBoardService service = BoardServiceImpl.getInstance();
		
		int num = service.deleteBorad(rqnum);
		
		if(num > 0) {
			//totalPage를 다시구하기
			Map<String, Object> map = service.getPageInfo(rqpage, rqtype, rqword);
			
			//request에 공유데이터 저장
			request.setAttribute("numkey", num);
			request.setAttribute("totalpagekey", map.get("totalpage"));
			
			//jsp로 forward - -json생성
			request.getRequestDispatcher("work/deleteboard.jsp").forward(request, response);
			
			
		}else {
			
		}
		
	}

}
