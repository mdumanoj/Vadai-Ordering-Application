import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Login extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		int i = login(username,password);
		if(i == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("uname",username);
			response.sendRedirect("/Vadai/home.jsp");
		}
		else {
			out.println("<h2>Incorrect username or password or</h2>");
			out.println("<a href='/Vadai/signup.html'>");
			out.println("Click here to Register</a>");
			out.println("<a href='/Vadai/login.html'>");
			out.println("Click here to Login</a>");
		}
	}
	
	public int login(String un, String pass) throws IOException {
		File f = new File("D:/register.doc");
		FileReader fr = new FileReader(f);
		BufferedReader br = new BufferedReader(fr);
		int flag=0;
		String buff;
		while((buff = br.readLine()) != null) {
			if(buff.equals(un)) {
				if(br.readLine().equals(pass)) {
					flag = 1;
					break;
				}
				else {
					flag = 0;
					break;
				}
			}
			br.readLine(); //To take password.
			br.readLine(); //To take \n line.
			flag = 0;
		}
		br.close();
		return flag;
	}
}