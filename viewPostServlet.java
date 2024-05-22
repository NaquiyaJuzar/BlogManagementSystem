

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class viewPostServlet
 */
@WebServlet("/viewPostServlet")
public class viewPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ResultSet rs1 = null;
        response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
        int count = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_info","root","naquiya2004");
			
			
			String username = request.getParameter("username");
			String query = "select count(*) as post_count from posts where username=?";
			ps=con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, username);
			
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt("post_count");
				if(count == 0) {
					pw.println("<html>");
					pw.println("<script>alert('The user has no posts.'); window.location.href='viewPost.jsp';</script>");
					pw.println("<body>");

					pw.println("</body>");

					pw.println("</html>");
				}
				
				pw.print("<html>"
						+ "<head>"
						+ "<style>"
						+ ".blog-container {"
						+ "            display: flex;}"
						+ ".blog {"
						+ "            width: 300px;"
						+ "            margin-right: 20px;"
						+ "            background-color: #f9f9f9;"
						+ "            border-radius: 8px;"
						+ "            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);"
						+ "            padding: 20px;}"
						+ "</style>"
						+ "</head>"
						+ "<body>"
						+ "<div class=\"blog-container\">");
				String query1 = "select title, content from posts where username=?";
				PreparedStatement ps1=con.prepareStatement(query1, Statement.RETURN_GENERATED_KEYS);
				ps1.setString(1, username);
				rs1 = ps1.executeQuery();
				while(rs1.next()) {
					String title = rs1.getString("title");
	                String content = rs1.getString("content");
	                pw.print("<div class=\"blog\">"
							+ "            <h2>"+title+"</h2>"
							+ "            <p>"+content+"</p>"
							+ "            <a>Read more...</a>"
							+ "        </div>");
				}
				pw.print("</div>"
							+ "</body>"
							+ "</html>");
				}
				
			}
			
		 catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			pw.println("<html>");
			pw.println("<script>alert('Username doesn't exist.'); window.location.href='viewPost.jsp';</script>");
			pw.println("<body>");

			pw.println("</body>");

			pw.println("</html>");
		}
		}
	}


