package controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PacoteDeViagemDAO;
import model.PacoteDeViagem;


@WebServlet( urlPatterns = { "/pacote","/pacote-create","/pacote-edit","/pacote-update","/pacote-delete","/pacote-reserva"})
public class PacoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       PacoteDeViagemDAO pacotedao= new PacoteDeViagemDAO();
       PacoteDeViagem pacote= new PacoteDeViagem();
    public PacoteServlet() {
        super();
           }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String action = request.getServletPath();
	 switch (action) {
	case "/pacote": 
			read(request,response);
		break;
	case "/pacote-create": 
		create(request,response);
	break;
	case "/pacote-edit": 
		edit(request,response);
	break;
	case "/pacote-update": 
		update(request,response);
	break;
	case "/pacote-delete": 
		delete(request,response);
	break;
	case "/pacote-reserva": 
		readPacote(request, response);
	break;
	default:
		response.sendRedirect("pacote");
		break;
	}
	}
	
	public void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<PacoteDeViagem> lista=pacotedao.listarPacotes();
		request.setAttribute("pacote", lista);
		RequestDispatcher rd=request.getRequestDispatcher("./views/pacotes/index.jsp");
		
		rd.forward(request, response);
		
	}
	public void readPacote(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<PacoteDeViagem> lista=pacotedao.listarPacotes();
		request.setAttribute("pacote", lista);
		
		RequestDispatcher rd=request.getRequestDispatcher("./views/reservas/cadastro.jsp");
		rd.forward(request, response);
	}
	public void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destino ,descricao;
		destino=request.getParameter("destino");
		descricao=request.getParameter("destino");
		int dias=Integer.parseInt(request.getParameter("duracao"));
		float preco=Float.parseFloat(request.getParameter("preco"));
		System.out.println(destino+descricao+dias+preco );
	pacote.setDestino(request.getParameter("destino"));
	pacote.setDescricao(request.getParameter("descricao"));
	pacote.setDuracaoEmDias(Integer.parseInt(request.getParameter("duracao")));
	pacote.setPreco(Float.parseFloat(request.getParameter("preco")));
	pacotedao.cadastrarPacote(pacote);
	response.sendRedirect("pacote");
	}
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt( request.getParameter("id"));
		pacote=pacotedao.selectById(id);
		request.setAttribute("pacote", pacote);
		RequestDispatcher rd=request.getRequestDispatcher("./views/pacotes/update.jsp");
		rd.forward(request, response);
		
	}
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		pacote.setIdPacote(Integer.parseInt(request.getParameter("id")));
		pacote.setDestino(request.getParameter("destino"));
		pacote.setDescricao(request.getParameter("descricao"));
		pacote.setDuracaoEmDias(Integer.parseInt(request.getParameter("duracao")));
		pacote.setPreco(Float.parseFloat(request.getParameter("preco")));
		pacotedao.atualizarPacote(pacote);
		response.sendRedirect("pacote");
	}
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int id = Integer.parseInt(request.getParameter("id"));
	pacotedao.deletarPacote(id);
	response.sendRedirect("pacote");
	}
	}
