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

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import dao.CommentDAO;


/**
 * Servlet implementation class Comment
 */
@WebServlet("/Comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Logger log = LogManager.getLogger(JOINUS.class);
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uuid = request.getParameter("ytc_uuid");
		String owner = request.getParameter("ytc_owner");
		String comment = request.getParameter("ytc_comment");
		
		uuid = "uuid";
		owner = "1212";
		comment = "hii";
		System.out.println("번수 완료");
		
		CommentDAO.CommentInsert(uuid, owner, comment);
		
		
		ServletContext context = getServletContext();
		RequestDispatcher dispatcher = context
				.getRequestDispatcher("/JSP/main.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uuid = request.getParameter("ytc_uuid");
		String owner = request.getParameter("ytc_owner");
		String comment = request.getParameter("ytc_comment");
		
		uuid = "uuid";
		owner = "1212";
		comment = "hii";
		System.out.println("번수 완료");
		
		CommentDAO.CommentInsert(uuid, owner, comment);
		
		
		ServletContext context = getServletContext();
		RequestDispatcher dispatcher = context
				.getRequestDispatcher("/JSP/main.jsp");
		dispatcher.forward(request, response);
		
	}
}