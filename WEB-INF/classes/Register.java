import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Register extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		register(username,password);
		out.println("<html><body>");
		out.println("Registered Successfully.!<br><br>");
		out.println("<a href='/Vadai/login.html'>");
		out.println("Click Here to Login</a>");
		out.println("</body></html>");
	}
	
	public void register(String un, String pass) throws IOException {
		File f = new File("D:/register.doc");
		FileWriter fw = new FileWriter(f,true);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.append(un);
		bw.append("\n"+pass+"\n\n");
		bw.close();
	}
}