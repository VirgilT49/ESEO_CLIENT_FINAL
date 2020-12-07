package fr.eseo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.eseo.Ville;

/**
 * Servlet implementation class AfficheVille
 */
@WebServlet("/AfficheVilles")
public class AfficheVilles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AfficheVilles() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String num = request.getParameter("page");
		int page = num != null ? Integer.parseInt(num) : 1;

		ArrayList<Ville> villesList = (ArrayList<Ville>) session.getAttribute("villes");
		
		ArrayList<Ville> villesListFinal = new ArrayList<Ville>();
		
		for (int i = (page-1); i < (page-1) + 50; i++) {
			if (i >= villesList.size()) {
				break;
			}
			villesListFinal.add(villesList.get(i));
		}
		
		request.setAttribute("villesPage", villesListFinal);
		request.setAttribute("numPage", page);
		this.getServletContext().getRequestDispatcher("/WEB-INF/afficheVilles.jsp").forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/afficheVilles.jsp").forward(request, response);
	}

}
