package com.leer.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.leer.member.model.vo.Member;
import com.leer.mypage.model.service.MypageService;

/**
 * Servlet implementation class MyPageRefundController
 */
@WebServlet("/refund.me")
public class MyPageRefundController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageRefundController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String p_code = request.getParameter("p_code");
		String orNo = request.getParameter("or_No");
		
		Member m = new MypageService().RefundController(memNo,p_code,orNo);
		
		request.setAttribute("m", m);
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/mypage/mypage_refund.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
