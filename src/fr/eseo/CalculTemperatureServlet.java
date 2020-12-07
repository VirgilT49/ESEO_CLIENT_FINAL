package fr.eseo;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

import fr.eseo.Ville;

/**
 * Servlet implementation class CalculTemperature
 */
@WebServlet("/CalculTemperatureServlet")
public class CalculTemperatureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculTemperatureServlet() {
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
		String villeTemp = request.getParameter("villeTemp");
		session.setAttribute("villeTemp", villeTemp);

		String latitude = null;
		String longitude = null;

		for (Ville ville : villesList) {
			if (ville.getNomCommune().equals(villeTemp)) {
				latitude = ville.getLatitude();
				longitude = ville.getLongitude();
			}
		}

		HttpResponse<JsonNode> reponseTemp;
		
		String urlTemp = "http://api.openweathermap.org/data/2.5/weather?APPID=2129170164288096a566a7b4580ed806&lat="
					+ latitude + "&lon=" + longitude + "";
		
		try {
			DecimalFormat df = new DecimalFormat("###.##");
			reponseTemp = Unirest.get(urlTemp).asJson();
			JsonElement jArrayTemp = JsonParser.parseString(reponseTemp.getBody().toString());
			JsonObject rootObjectTemp = jArrayTemp.getAsJsonObject();
			
			String tempFVilleTemp = rootObjectTemp.getAsJsonObject("main").get("temp").toString();
			double tempCVilleTemp = Double.parseDouble(tempFVilleTemp) - 273.15;
			session.setAttribute("tempsVilleTemp", df.format(tempCVilleTemp));

		} catch (UnirestException e) {
				e.printStackTrace();
		}
		
		session.setAttribute("villes", villesList);
		this.getServletContext().getRequestDispatcher("/WEB-INF/resultatTemperature.jsp").forward(request, response);
		
	}
	
}
