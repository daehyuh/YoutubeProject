package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import dao.MemberDAO;
import entity.MemberEntity;

/**
 * Servlet implementation class LOGIN
 */
@WebServlet("/LOGIN")
public class LOGIN extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String path = this.getClass().getSimpleName();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LOGIN() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		
		MemberEntity entity =  MemberDAO.MemberSelectById(user_id);
		try {

			if(entity.getMEMBER_ID().isEmpty()) {	
				Log.INFOLOG("Id Not Match", path);
				msgPrint(request, response, "err");
				
			} else {
				if(entity.getMEMBER_PW().equals(user_pwd)) {
					//msgPrint(request, response, "Success");
					Log.INFOLOG("Login Succcess", path);
					HttpSession session = request.getSession();
					session.setAttribute("LOGIN", entity);
					
					ServletContext context = getServletContext();
					RequestDispatcher dispatcher = context
							.getRequestDispatcher("/jsp/main.jsp");
					dispatcher.forward(request, response);
				} else { // 패스워드 틀림					
					Log.INFOLOG("Password Not Match", path);
					msgPrint(request, response, "err");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			Log.ERRORLOG("NULL", path);
			msgPrint(request, response, "err");
		}
	}
	
	void msgPrint(HttpServletRequest request, HttpServletResponse response,
			String msg) throws IOException {
		String msgPrint = "";

		if (msg.equals("err")) {
			msgPrint = "alert('아이디 또는 패스워드를 잘못입력하였습니다.');location.href='/jsp/login.jsp';";
		} else {
			msgPrint = "alert('로그인 성공');";
		}
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println(msgPrint);
		out.println("</script>");
		out.close();
	}
}
