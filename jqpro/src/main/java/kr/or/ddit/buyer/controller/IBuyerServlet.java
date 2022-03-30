package kr.or.ddit.buyer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.buyer.service.IBuyerService;
import kr.or.ddit.buyer.service.IBuyerServiceImpl;
import kr.or.ddit.buyer.vo.BuyerVo;

/**
 * Servlet implementation class IBuyerServlet
 */
@WebServlet("/IBuyerServlet")
public class IBuyerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IBuyerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//IBuyerService service = IBuyerServiceImpl.getInstance();
		//List<BuyerVo> list = service.selectAll();
		//request.setAttribute("listvalue", list);
		//request.getRequestDispatcher("0330/buyer.jsp").forward(request, response);
		
		//1. 전송시 데이터 받기
		
		//2. service 객체 얻기
		IBuyerService service = IBuyerServiceImpl.getInstance();
		
		//3. service 메소드 호출하기 결과값 return 받기
		List<BuyerVo> list = service.selectAll();
		
		//4. request에 결과 값을 저장
		request.setAttribute("listvalue", list);
		
		//5. jsp로 위임(forward)하여 응답데이터 생성하기(출력또는 json 데이터)
		request.getRequestDispatcher("0330/buyer.jsp").forward(request, response);
		
		
		
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		//1. 전송시 데이터 받기
		String send = request.getParameter("id");
		
		//2. service 객체 얻기
		IBuyerService service = IBuyerServiceImpl.getInstance();
		
		//3. service 메소드 호출하기 결과값 return 받기
		BuyerVo vo = service.selectBuyer(send);
		
		//4. request에 결과 값을 저장
		request.setAttribute("listvalue2", vo);
		
		//5. jsp로 위임(forward)하여 응답데이터 생성하기(출력또는 json 데이터)
		request.getRequestDispatcher("0330/selectbuyer.jsp").forward(request, response);
		
	}
	
	


}
