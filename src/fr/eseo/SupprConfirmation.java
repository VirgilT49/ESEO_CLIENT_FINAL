package fr.eseo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

import fr.eseo.Ville;

/**
 * Servlet implementation class SupprConfirmation
 */
@WebServlet("/SupprConfirmation")
public class SupprConfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprConfirmation() {
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
		String villeSup = request.getParameter("ville");
		
		ArrayList<Ville> villes = (ArrayList<Ville>) session.getAttribute("villes");
		String codeVille = null;
		
		for (Ville ville : villes) {
			if (ville.getNomCommune().equals(villeSup)) {
				codeVille = ville.getCodeCommune();
			}
		}
		
		try {
			HttpResponse<String> rep = Unirest.delete("http://localhost:8181/ville/delete/" + codeVille).asString();
		} catch (UnirestException e) {
			e.printStackTrace();
		}
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/confirmationSuppr.jsp").forward(request, response);
	}

}
