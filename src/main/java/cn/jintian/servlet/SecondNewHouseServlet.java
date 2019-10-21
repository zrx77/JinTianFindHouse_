package cn.jintian.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.jintian.pojo.SecondNew_h;
import cn.jintian.service.impl.SecondNewHouseServiceImpl;
import cn.jintian.util.SecondHouse;

public class SecondNewHouseServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String newHouseId = request.getParameter("hid");
		SecondNew_h sNew_h = new SecondNew_h();
		sNew_h.setNew_h_id(Integer.parseInt(newHouseId));
		SecondNewHouseServiceImpl secondHouse = new SecondNewHouseServiceImpl();
		SecondNew_h secondNewHouse = secondHouse.getSecondNewHouse(sNew_h);
		request.getSession().setAttribute("secondNewHouse", secondNewHouse);
		response.sendRedirect("secondHouse/index.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
