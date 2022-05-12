package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import dao.FileDAO;
import dao.MemberDAO;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/FileUpload")
@MultipartConfig(
		maxFileSize =-1,
		location ="C:\\test4 - 복사본\\src\\main\\webapp\\temp\\",
		fileSizeThreshold=1024
		)
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUpload() {
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
		
		Part part = request.getPart("file");
		Part part2 = request.getPart("file2");
		String owner = request.getParameter("video_owner");
		String name = request.getParameter("video_name");
		String intro = request.getParameter("video_intro");
		
		owner = "1212";
		name = "테스트1";
		intro = "테스트1";
		
		
		
		String dir = "C:\\test4 - 복사본\\src\\main\\webapp\\file\\";
		String uniqueFileName = UUID.randomUUID().toString().replace("-", "");
		try {
			part.write(dir + uniqueFileName+".mp4");
			part2.write(dir + uniqueFileName+".png");
			System.out.println(dir + uniqueFileName+".mp4");
			System.out.println(dir + uniqueFileName+".png");
			
			MemberDAO.UploadFile(uniqueFileName, owner, dir, name, intro);
			
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('파일 업로드 성공.');");
			out.print("location.href='/jsp/main.jsp';");
			out.print("</script>");
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('파일 업로드 오류.');");
			out.print("location.href='/jsp/main.jsp';");
			out.print("</script>");
			out.close();	
		}
		
	}

	
    private String getFilename(Part part){
        String fileName = "";        
        String header = part.getHeader("content-disposition");
        //part.getHeader :form-data; name="theFile";
        //filename="RHDSetup.log" 처럼 헤더가 나옴 따라서 세미콜론마다 지워야 할 필요성이 있음
        String [] elements = header.split(";");
       
        for(String element : elements){
            /*System.out.println("서브스트링 전:" +element);*/
            fileName = element.substring(element.indexOf('=')+1);
            /*System.out.println("트림 전:"+fileName);*/
            fileName = fileName.trim().replace("\"",""); // " <- 쌍따옴표 지움
            /*System.out.println("트림 후:"+fileName);*/
        }        
        return fileName;        
    }
}
