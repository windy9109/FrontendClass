package kr.or.ddit.prod.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.or.ddit.buyer.service.IBuyerService;
import kr.or.ddit.buyer.service.IBuyerServiceImpl;
import kr.or.ddit.buyer.vo.BuyerVo;
import kr.or.ddit.prod.service.IProdService;
import kr.or.ddit.prod.service.IProdServiceImpl;
import kr.or.ddit.prod.vo.ProdVo;

/**
 * Servlet implementation class IProdServlet
 */
@WebServlet("/ProdServlet.do")
public class IProdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IProdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//lprod를 선택시 prod id와 name을 select 한다.
		//1. 전송시 데이터 받기
		String dogo = request.getParameter("lgu");
		//2. service 객체 얻기
		IProdService service = IProdServiceImpl.getInstance();
		
		//3. service 메소드 호출하기 결과값 return 받기
		List<ProdVo> list = service.selectAll(dogo);
		
		
		Gson gson = new Gson();
		String result = gson.toJson(list);
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(result);
		out.flush();
		
		
//		//4. request에 결과 값을 저장
//		request.setAttribute("listvalue0", list);
//		
//		//5. jsp로 위임(forward)하여 응답데이터 생성하기(출력또는 json 데이터)
//		request.getRequestDispatcher("0330/prod.jsp").forward(request, response);

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 전송시 데이터 받기
		String send = request.getParameter("id");
		
		//2. service 객체 얻기
		IProdService service = IProdServiceImpl.getInstance();
		
		//3. service 메소드 호출하기 결과값 return 받기
		List<ProdVo> vo = service.selectProd(send);
		
//		//4. request에 결과 값을 저장
//		request.setAttribute("listvalue1", vo);
//		
//		//5. jsp로 위임(forward)하여 응답데이터 생성하기(출력또는 json 데이터)
//		request.getRequestDispatcher("0330/prodetail.jsp").forward(request, response);
		
		Gson gson = new Gson();
		String result = gson.toJson(vo);
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(result);
		out.flush();
		
		
	}

}
