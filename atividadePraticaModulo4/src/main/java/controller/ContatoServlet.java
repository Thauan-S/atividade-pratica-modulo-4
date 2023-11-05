package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContatoDAO;
import model.Cliente;
import model.Contato;


@WebServlet(urlPatterns = {"/contato","/contato-create","/contato-update","/contato-delete","/contato-list","/contato-edit"})
public class ContatoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ContatoDAO contatodao=new ContatoDAO();
       Contato contato=new Contato();
       Cliente cliente=new Cliente();
    
    public ContatoServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getServletPath();
		
		switch (action) {
		case "/contato": 
			read(request, response);
			break;
		case "/contato-create": 
			create(request, response);
			break;
		case "/contato-edit": 
			edit(request, response);
			break;
		case "/contato-delete": 
			delete(request, response);
			break;
		case "/contato-update": 
			update(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
		}
	}
	public void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<Contato> mensagens=contatodao.listaMensagens();
		request.setAttribute("mensagens", mensagens);// passa os atributos pra pagina abaixo
		RequestDispatcher rd=request.getRequestDispatcher("./views/contatos/index.jsp");//página que vai ser chamada ao executaro método no switch
		rd.forward(request, response);
	}
	public void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		contato.setCliente(new Cliente(id));
	
		
	contato.setAssunto(request.getParameter("assunto"));
	contato.setMensagem(request.getParameter("mensagem"));
	contatodao.inserirMensagem(contato);
	response.sendRedirect("contato");
	}
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		contatodao.apagarMensagem(id);
		
	response.sendRedirect("./contato");
	}
	public void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	int id=Integer.parseInt(request.getParameter("id"));
	contato=contatodao.FindById(id);
	System.out.println(contato.getIdContato());
	System.out.println(contato.getAssunto());
	System.out.println(contato.getMensagem());
	request.setAttribute("contato", contato);
	RequestDispatcher rd=request.getRequestDispatcher("./views/contatos/update.jsp");
	rd.forward(request, response);
	}
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		contato.setIdContato(Integer.parseInt(request.getParameter("id")));
		contato.setMensagem(request.getParameter("mensagem"));
		contato.setAssunto(request.getParameter("assunto"));
		contatodao.atualizarMensagem(contato);
		response.sendRedirect("contato");
		}
}
