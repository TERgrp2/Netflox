package controller;
/*
 * @Auteur: Lina BELHADJ MOSTEFA 
 */
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entites.Video;



/**
 * Servlet implementation class RechercheServlet
 */
@WebServlet("/RechercheServlet")
public class RechercheServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RechercheServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			VideoDB db = (VideoDB) request.getSession().getAttribute("db");
			db = new VideoDB();
			Vector<Video> video = new Vector<Video>();
			request.getSession().setAttribute("db", db);
			String action = (String) request.getParameter("action");
			switch(action) {
			case "titre":
				//Ici se fait le traitement de la requete pour afficher toutes les videos
				//qui contiennent le mot stocké dans "s" dans leur titre
				String t = request.getParameter("t");
				String ss = t.replaceAll("([%_0-9;,]|--)+", "");
				ss = ss.toLowerCase();
				video = db.getVideo(ss); //renvoie un vecteur de videos dans lequels 
											//une partie ou tout le titre ressemble à ce qu'il y a dans "s"
				request.setAttribute("video", video);
				break;
			case "cat":
				String c = request.getParameter("cat");
				 video = db.getCatVideo(c);
				request.setAttribute("video", video);
				break;
			case "dateSortie":
				String d = request.getParameter("date");
				DateFormat format = new SimpleDateFormat("yyyy",Locale.FRANCE);
				Date date = format.parse(d);
				video = db.getDateVideo(date);
				request.setAttribute("video", video);
				break;
		}
			
			RequestDispatcher rd =
				request.getRequestDispatcher("/recherche_video.jsp");
		
		rd.forward(request, response);
	} catch (Exception e) { throw new ServletException(e);}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
