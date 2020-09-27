package wipro_HTML;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class auction
 */
public class auction extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String name=request.getParameter("name");
		String yname=request.getParameter("yname");
		String email= request.getParameter("email");
		String bid= request.getParameter("bid");
		 RequestDispatcher rdObj = null;
		if("".equals(id)||"".equals(name)||"".equals(yname)||"".equals(email)||"".equals(bid))
		{
			 out.write("<center><p id='errMsg' style='color: red; font-size: larger;'>Required Data Missing!Enter and Resubmit.</p></center>");
	            rdObj = request.getRequestDispatcher("Auction.html");
	            rdObj.include(request, response); 
	    }
		else {
		rdObj = request.getRequestDispatcher("done.jsp");
        rdObj.include(request, response); }
		out.close();	
	}

	

}
