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
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import kr.or.ddit.prod.service.IProdService;
import kr.or.ddit.prod.service.IProdServiceImpl;
import kr.or.ddit.prod.vo.ProdVo;

/**
 * Servlet implementation class ProdServletSW
 */
@WebServlet("/ProdServletSW.do")
public class ProdServletSW extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProdServletSW() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//lprod를 선택시 prod id와 name를 select 한다.
		//lprod에서 신발, 장난감에 해당하는 prod항목이 없다.
		
		//1. 전송시 데이터 받기
		String send = request.getParameter("id");
		
		//2. service 객체 얻기
		IProdService service = IProdServiceImpl.getInstance();
		
		//3. service 메소드 호출하기 결과값 return 받기
		//신발 장난감에 해당하는 list는 없다.
		List<ProdVo> vo = service.selectAll(send);
		
		
//		//4. request에 결과 값을 저장
//		request.setAttribute("listvalue1", vo);
//		
//		//5. jsp로 위임(forward)하여 응답데이터 생성하기(출력또는 json 데이터)
//		request.getRequestDispatcher("0330/prodetail.jsp").forward(request, response);
		
		
//		Gson gson = new Gson();
//		String result = gson.toJson(vo);
		
		JsonObject obj = new JsonObject();
		if(vo != null && vo.size() > 0) {
			
			// {
			// "sw" : "ok"
			// "data" : [ {},{},{},{} ]
			// }
			
			//데이터가 있는경우
			obj.addProperty("sw", "ok");
			Gson gson = new Gson();
			//jele --> value
			JsonElement jele = gson.toJsonTree(vo);
			obj.add("datas", jele);
			
			
		}else {
			//데이터가 없는 경우
			obj.addProperty("sw", "no");
		}
		
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(obj);
		out.flush();
		
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
