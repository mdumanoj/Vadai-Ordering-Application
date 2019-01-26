import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Application extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String press = request.getParameter("btn");
		if(press.equals("New User")) {
			response.sendRedirect("/Vadai/signup.html");
		}
		else {
			response.sendRedirect("/Vadai/login.html");
		}
		
		File f = new File("D:/register.doc");
		FileWriter fw = new FileWriter(f,true);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.close();
	}
}