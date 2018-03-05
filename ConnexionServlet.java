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

import entites.Admin;
import entites.Client;
import modele.AdminDB;
import modele.ClientDB;

/**
 * Servlet implementation class ConnexionServlet
 */
@WebServlet("/ConnexionServlet")
public class ConnexionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private static final String ATT_ERREUR = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnexionServlet() {
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
		Client client = new Client();
		Admin admin = new Admin();
		
		String login = (String) request.getParameter("login");
		String pass = (String) request.getParameter("pass");
		
		if (login.startsWith("ad")) {
			try {
				AdminDB adb = new AdminDB();
				if(adb.verifConnex(login,pass)) {
					admin = adb.getAdmin(login);
					request.getSession().setAttribute("admin", admin);
					response.sendRedirect(request.getContextPath() + "/admin.jsp");
				}
				request.setAttribute("erreur", "Les identifiants sont incorrects");
				RequestDispatcher rd=request.getRequestDispatcher("/connexion.jsp");
				rd.forward(request, response);
			}catch(Exception e) {
				
			}
		}else {
			try {
				ClientDB cdb = new ClientDB();
				if(cdb.verifConnex(login,pass)) {
					client = cdb.getClient(login);
					request.getSession().setAttribute("client", client);
					response.sendRedirect(request.getContextPath() + "/client.jsp");
				}
				request.setAttribute("erreur", "Les identifiants sont incorrects");
				RequestDispatcher rd=request.getRequestDispatcher("/connexion.jsp");
				rd.forward(request, response);
				
			}catch(Exception e) {
				
			}
		}
	}

}
