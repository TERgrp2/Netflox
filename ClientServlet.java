package controller;
/*
 * @Auteur: Lina BELHADJ MOSTEFA 
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entites.Client;
import entites.Video;
import modele.ClientDB;

/**
 * Servlet implementation class ClientServlet
 */
@WebServlet("/ClientServlet")
public class ClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientServlet() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		Client client = (Client) request.getSession().getAttribute("client");
		String idv =  (String) request.getAttribute("idVideo");
		
		VideoDB vid = new VideoDB();
		Video video = vid.getVideo(Integer.parseInt(idv));
		String action = request.getParameter("action");
		
		
		switch(action) {
		case "achat":
			client.getListeAchat().add(video);
			break;
		case "location":
			if(client.getPremium()) {
				client.getListeStreaming().add(video);	
				break;
			}
			client.getListeLocation().add(video);
			break;
		}
	
	}

}
