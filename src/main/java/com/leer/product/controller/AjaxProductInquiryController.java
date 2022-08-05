package com.leer.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.leer.product.model.service.ProductService;
import com.leer.product.model.vo.Inquiry;

/**
 * Servlet implementation class AjaxProductInquiryController
 */
@WebServlet("/inquiry.pd")
public class AjaxProductInquiryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxProductInquiryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String pCode = request.getParameter("pNo");
		String memName = request.getParameter("memName");
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Inquiry i = new Inquiry();
		i.setpCode2(pCode);
		i.setMemName(memName);
		i.setqCategory(category);
		i.setTitle(title);
		i.setContent(content);
		
		int result = new ProductService().insertInquiry(i);
		
		if(result > 0) {
			
			request.setAttribute("inquiry", i);
			
			response.setContentType("application/json; charset=UTF-8");
			new Gson().toJson(i, response.getWriter()); 
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
