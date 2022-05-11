package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import dao.MemberDAO;
import entity.MemberEntity;

/**
 * Servlet implementation class JOINUS
 */
@WebServlet("/JOINUS")
public class JOINUS extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String path = this.getClass().getSimpleName();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JOINUS() {
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
		String user_name = request.getParameter("user_name");

		try {
			MemberDAO.MemberInsert(user_id, user_pwd, user_name);
			Log.INFOLOG("JOIN Success", path);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원가입 성공.');");
			out.println("location.href='/'");
			out.println("</script>");
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
			// log4j
			Log.ERRORLOG("Join Error", path);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원가입중 에러가 발생했습니다.');");
			out.println("window.history.back()");
			out.println("</script>");
			out.close();
		}
		
	}

}
