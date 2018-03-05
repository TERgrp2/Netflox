package controller;
/*
 * @Auteur: Lina BELHADJ MOSTEFA 
 */
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entites.Client;
import modele.ClientDB;

/**
 * Servlet implementation class InscriptionServlet
 */
@WebServlet("/InscriptionServlet")
public class InscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/* Récuperation des données entrées par le client 
		 * lors de son inscription
		 */
		RequestDispatcher rd = request.getRequestDispatcher("/connexion.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		try {
		String nom = request.getParameter("nomClient");
		String prenom = request.getParameter("prenomClient");
		int age = Integer.parseInt(request.getParameter("age"));
		String mail = request.getParameter("mailClient");
		String tel = request.getParameter("telClient");
		String pass = request.getParameter("mdpClient");
		String cb = request.getParameter("cbClient");

		
		Client client = new Client();
		client.setNom(nom);
		client.setPrenom(prenom);
		client.setAge(age);
		client.setMail(mail);
		client.setTel(tel);
		client.setPass(pass);
		client.setCB(cb);
		client.estPremium();
		
		ClientDB cdb = new ClientDB();
		cdb.addClient(client);
		request.setAttribute("inscription", cdb);
		RequestDispatcher rd = request.getRequestDispatcher("/connexion.jsp");
		rd.forward(request, response);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
