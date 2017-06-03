package com.in28minutes.logout;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.in28minutes.login.LoginService;
import com.in28minutes.todo.TodoService;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/logout.do")
public class LogoutServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
}
