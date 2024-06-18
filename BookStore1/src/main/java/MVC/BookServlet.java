package MVC;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class BookServlet
 */
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		Book bean = new Book();
		
		 String id = request.getParameter("id");
	     String title = request.getParameter("title");
	     String author = request.getParameter("author");
	     String priceStr = request.getParameter("price");
	     String desc = request.getParameter("desc");

	     bean.setId(id);
	     bean.setTitle(title);
	     bean.setAuthor(author);
	     bean.setDesc(desc);

	     try {
	          double price = Double.parseDouble(priceStr);
	          bean.setPrice(price);
	     } catch (NumberFormatException e) {
	          RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
	          rd.forward(request, response);
	          return;
	        }
	    boolean status = bean.validate();

		
		if(status) {
			request.setAttribute("bean", bean);
			RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
			rd.forward(request,response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
			rd.forward(request,response);

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
