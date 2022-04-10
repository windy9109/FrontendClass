package kr.or.ddit.zip.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.google.gson.Gson;

import kr.or.ddit.buyer.service.IBuyerService;
import kr.or.ddit.buyer.service.IBuyerServiceImpl;
import kr.or.ddit.buyer.vo.BuyerVo;
import kr.or.ddit.member.vo.ZipVo;
import kr.or.ddit.zip.Service.IZipService;
import kr.or.ddit.zip.Service.ZipServiceImpl;

/**
 * Servlet implementation class ZipServlet
 */
@WebServlet("/ZipServlet.do")
public class ZipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ZipServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//2. service 객체 얻기
		IZipService service = ZipServiceImpl.getInstance();
		
		//3. service 메소드 호출하기 결과값 return 받기
		List<String> list = service.sido();
		
		//4. request에 결과 값을 저장
		//request.setAttribute("listvalue", list);
		
		//5. jsp로 위임(forward)하여 응답데이터 생성하기(출력또는 json 데이터)
		//request.getRequestDispatcher("0401/sido.jsp").forward(request, response);
		
		Gson gon = new Gson();
		String result = gon.toJson(list);
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(result);
		out.flush();
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//구출력
		request.setCharacterEncoding("utf-8");
		String dogo = request.getParameter("flag");
		if(dogo.equals("1")) gugunPro(request, response);
		if(dogo.equals("2")) dongPro(request, response);
		if(dogo.equals("3")) zipallPro(request, response);
		
				
	}
	
	
	
	
	protected void gugunPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String opt = request.getParameter("opt");
		
		//2. service 객체 얻기
		IZipService service = ZipServiceImpl.getInstance();
		
		//3. service 메소드 호출하기 결과값 return 받기
		List<String> list = service.gugun(opt);
		

		Gson gon = new Gson();
		String result = gon.toJson(list);
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(result);
		out.flush();
		
		
	}
	
	
	protected void dongPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sido = request.getParameter("opt");
		String gugun = request.getParameter("opt2");
		
		ZipVo vo = new ZipVo();
		vo.setSido(sido);
		vo.setGugun(gugun);
		
		//2. service 객체 얻기
		IZipService service = ZipServiceImpl.getInstance();
		
		//3. service 메소드 호출하기 결과값 return 받기
		List<String> list = service.dong(vo);
		

		Gson gon = new Gson();
		String result = gon.toJson(list);
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(result);
		out.flush();
		
		
	}
	
	
	
	protected void zipallPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
	

}
