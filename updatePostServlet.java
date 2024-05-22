

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updatePostServlet
 */
@WebServlet("/updatePostServlet")
public class updatePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info","root","naquiya2004");
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String newtitle = request.getParameter("newtitle");
			
			String username = request.getParameter("username");
			
			String query = "UPDATE posts SET title=?, content=? where username=? AND title=?";
			
			PreparedStatement ps=con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			ps.setString(3, username);
			ps.setString(4, title);
			ps.setString(2, content);
			ps.setString(1, newtitle);
			
			
			int i =ps.executeUpdate();
			
	        try(ResultSet generatedKeys = ps.getGeneratedKeys()){
			if(i>0)
			{
				pw.println("<html>");
				pw.println("<script>alert('Post updated successfully.'); window.location.href='index.jsp';</script>");
				pw.println("<body>");

				pw.println("</body>");

				pw.println("</html>");
			}
			else
			{
				System.out.println("<font color=red size=18> Login failed!!<br>");
				System.out.println("<a href=createUser.jsp>Try Agian</a>");
			}}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			pw.println("<html>");
			pw.println("<script>alert('Either username or title entered is wrong.'); window.location.href='updatePost.jsp';</script>");
			pw.println("<body>");

			pw.println("</body>");

			pw.println("</html>");
		} catch (Exception e) {
			System.out.print("Exception"+ e.getMessage());
		}
	}

}
