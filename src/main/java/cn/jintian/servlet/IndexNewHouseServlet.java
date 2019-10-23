package cn.jintian.servlet;

import cn.jintian.service.impl.IndexNewHouseServiceImpl;
import cn.jintian.util.NewHousePage;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class IndexNewHouseServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		int count = 1;
		String para = request.getParameter("index");
		if (para != null) {
			count = Integer.parseInt(para);
		}
		IndexNewHouseServiceImpl inhsi = new IndexNewHouseServiceImpl();
		NewHousePage newHouse = inhsi.getNewHouse(count, 2);
		String s = JSONObject.toJSONString(newHouse);
		out.print(s);
		out.flush();
		out.close();
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
