package noDeal;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/getInfo")
public class ReadSubmit extends HttpServlet{
	
	Deal deal = new Deal();
	Connection con = deal.getConnection();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		
		String name = req.getParameter("name");
		String date = req.getParameter("date");
		String num = req.getParameter("num");
		
		int number = Integer.parseInt(num);
		
		PreparedStatement p = null;
		ResultSet rs = null;
		String sqlState = "INSERT INTO dbo.NickTable(FirstName, date, FavNum) \r\n" 
				+"VALUES ('"+name+"','"+date+"','" +number+"');";
		try {
			p = con.prepareStatement(sqlState);
			p.executeUpdate();
			//con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//pw.close();
		res.sendRedirect(req.getContextPath() + "/Print.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}
}
