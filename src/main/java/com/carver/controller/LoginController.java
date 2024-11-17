package com.carver.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/logincontroller")
public class LoginController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");

		if (email.equals("thakurrohitdsingh@gmail.com") && pass.equals("vaman@88")) {

			// request.setAttribute("userName", userName);
			HttpSession session = request.getSession();
			session.setAttribute("name_key", userName);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/Profile.jsp");
			dispatcher.forward(request, response);

		} else {

			PrintWriter writer = response.getWriter();
			writer.print("<h1 style=color:red> Wrong Credentials... </h1>");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/index.html");
			dispatcher.include(request, response);
		}
	}
}
