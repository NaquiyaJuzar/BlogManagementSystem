

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BlogManagementServlet
 */
@WebServlet("/BlogManagementServlet")
public class BlogManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public HttpSession session;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=null;
		session = request.getSession();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info","root","naquiya2004");
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
			
			String n=request.getParameter("username");
			String p=request.getParameter("password");
			String query1 = "select * from user where username =?";
			PreparedStatement ps1=con.prepareStatement(query1, Statement.RETURN_GENERATED_KEYS);
			ps1.setString(1, n);
			ResultSet rs = ps1.executeQuery();
			if(rs.next())
			{
				pw.println("<html>");
				pw.println("<script>alert('User already exists.'); window.location.href='createUser.jsp';</script>");
				pw.println("<body>");

				pw.println("</body>");

				pw.println("</html>");
			}else {
				try {
			String query = "INSERT INTO user VALUES (?, ?)";
			PreparedStatement ps=con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, n);
			ps.setString(2, p);
			
			int i =ps.executeUpdate();
			
	        try(ResultSet generatedKeys = ps.getGeneratedKeys()){
			if(i>0)
			{
				
				session.setAttribute("activity","created");
				
				pw.println("<html>");
				pw.println("<script>alert('User created successfully.'); window.location.href='loginPage.jsp';</script>");
				pw.println("<body>");

				pw.println("</body>");

				pw.println("</html>");
			
				
				
//				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
//				rd.forward(request, response);
			}
			else
			{
				System.out.println("<font color=red size=18> Login failed!!<br>");
				System.out.println("<a href=createUser.jsp>Try Agian</a>");
			}
		}} catch (SQLException e) {
			if (e.getSQLState().equals("23000") && e.getErrorCode() == 1062) {
		        // This SQLException indicates a unique constraint violation,
		        // meaning the username already exists in the database.
				pw.println("<html>");
				pw.println("<script>alert('Password already exists.'); window.location.href='createUser.jsp';</script>");
				pw.println("<body>");
				

				pw.println("</body>");

				pw.println("</html>");
			}} catch (Exception e) {
			System.out.print("Exception"+ e.getMessage());
		}
	        
		}
	} catch (ClassNotFoundException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}finally {
        // Close the database connection and other resources in the finally block
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
}
