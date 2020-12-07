package fr.eseo;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.eseo.Ville;

/**
 * Servlet implementation class CalculDistanceServlet
 */
@WebServlet("/CalculDistanceServlet")
public class CalculDistanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculDistanceServlet() {
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
		ArrayList<Ville> villesList = (ArrayList<Ville>) session.getAttribute("villes");
		
		String ville1 = request.getParameter("ville1");
		String ville2 = request.getParameter("ville2");
		
		session.setAttribute("ville1", ville1);
		session.setAttribute("ville2", ville2);

		String latitude1 = null;
		String longitude1 = null;
		String latitude2 = null;
		String longitude2 = null;

		for (Ville ville : villesList) {
			if (ville.getNomCommune().equals(ville1)) {
				latitude1 = ville.getLatitude();
				longitude1 = ville.getLongitude();
			}
			if (ville.getNomCommune().equals(ville2)) {
				latitude2 = ville.getLatitude();
				longitude2 = ville.getLongitude();
			}
		}

		DecimalFormat df = new DecimalFormat("###.##");
		double distance = this.calculDistanceVilles(latitude1, longitude1, latitude2, longitude2);
		session.setAttribute("distance", df.format(distance));
		this.getServletContext().getRequestDispatcher("/WEB-INF/resultatDistance.jsp").forward(request, response);
	}

	public double calculDistanceVilles(String latitude1, String longitude1, String latitude2, String longitude2) {
		
		double lat1 = Double.parseDouble(latitude1);
		double long1 = Double.parseDouble(longitude1);
		double lat2 = Double.parseDouble(latitude2);
		double long2 = Double.parseDouble(longitude2);

		double dist = Math.acos(Math.sin(Math.toRadians(lat1)) * Math.sin(Math.toRadians(lat2))
					+ Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) * Math.cos(Math.toRadians(long1 - long2))) * 6371;
		
		return dist;
	}

}
