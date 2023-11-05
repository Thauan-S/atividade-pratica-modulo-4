package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PacoteDeViagemDAO;
import dao.ReservaDAO;
import model.Cliente;
import model.PacoteDeViagem;
import model.Reserva;


@WebServlet(urlPatterns = { "/reserva","/reserva-create","/reserva-delete","/reserva-edit","/reserva-update","/reserva-data"})
public class ReservaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Reserva reserva=new Reserva();
       ReservaDAO reservadao=new ReservaDAO();
       PacoteDeViagem pacote=new PacoteDeViagem();
       PacoteDeViagemDAO pacotedao=new PacoteDeViagemDAO();
       Cliente cli=new Cliente();
    public ReservaServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action =request.getServletPath();
		switch (action) {
		case "/reserva": 
			read(request,response);
			break;
		case "/reserva-create": 
			create(request,response);
			break;
		case "/reserva-data": 
			data(request,response);
			break;
		case "/reserva-delete": 
			delete(request,response);
			break;
		case "/reserva-edit": 
			edit(request,response);
			break;
		case "/reserva-update": 
			update(request,response);
			break;
		default:
			response.sendRedirect("index.jsp");
		}
	}
	public void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	List <Reserva> lista =reservadao.listarReservas();
	request.setAttribute("reserva", lista);
	RequestDispatcher rd=request.getRequestDispatcher("./views/reservas/index.jsp");
	rd.forward(request, response);
	}
	public void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int idPacote= Integer.parseInt(request.getParameter("idPacote"));
	int idCliente=Integer.parseInt(request.getParameter("idCli"));
	String data=request.getParameter("data");
	System.out.println(idPacote);
	System.out.println(idCliente);
	System.out.println(data);
	reserva.setCliente(new Cliente(idCliente));
	reserva.setPacote(new PacoteDeViagem(idPacote));
	reserva.setStatus("ok");
	reserva.setDataDeViagem(data);
	reservadao.cadastrarReserva(reserva);
	response.sendRedirect("reserva");
	}
	public void data(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idPacote= Integer.parseInt( request.getParameter("idPacote"));
		int idCliente=Integer.parseInt( request.getParameter("idCli"));
		pacote= pacotedao.selectById(idPacote);
		
		System.out.println(idPacote);
		System.out.println(idCliente);
		
		request.setAttribute("pacote", pacote);
		RequestDispatcher rd=request.getRequestDispatcher("./views/reservas/reserva.jsp");
		rd.forward(request, response);
	}
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int id =Integer.parseInt(request.getParameter("id"));
	reservadao.cancelarReserva(id);
	response.sendRedirect("reserva");
	}
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		reserva=reservadao.FindById(id);
		
		
		request.setAttribute("reserva", reserva);
		RequestDispatcher rd=request.getRequestDispatcher("./views/reservas/update.jsp");
		rd.forward(request, response);
	}
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		reserva.setIdReserva(Integer.parseInt(request.getParameter("idReserva")));
		reserva.setStatus(request.getParameter("status"));
		reserva.setDataDeViagem(request.getParameter("dataviagem"));
		reservadao.atualizarReserva(reserva);
		response.sendRedirect("reserva");
	}
	}
