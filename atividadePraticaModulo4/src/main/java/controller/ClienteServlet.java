package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;


@WebServlet( urlPatterns = {"/cliente","/cliente-create","/cliente-update","/cliente-delete","/cliente-edit"})
public class ClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ClienteDAO clidao=new ClienteDAO();
       Cliente cliente=new Cliente();
    public ClienteServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getServletPath();// guarda a busca da url
		switch (action) { // de acordo com a rota eu executo um método
		case "/cliente": // rota é chamada através de um link no index.html
			read(request,response);
			break ;
		case "/cliente-delete": // rota é chamada  através de um button no index.jsp
			delete(request,response);
			break ;
		case "/cliente-create": // rota chamada através do form no cadastro.html
			create(request,response);
			break ;
		case "/cliente-edit": // rota chamada através do 
			edit(request,response);
			break ;
		case "/cliente-update": // rota chamada através do 
			update(request,response);
			break ;
		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List <Cliente> lista=clidao.listarClientes();
		request.setAttribute("clientes", lista);// passando a lista para o jsp
		RequestDispatcher rd=request.getRequestDispatcher("./views/clientes/index.jsp");
		rd.forward(request, response);
	}
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id= Integer.parseInt(request.getParameter("id"));
		clidao.removerPorId(id);
		response.sendRedirect("./cliente"); // retorna novamente para a rota de clientes após deletar para reccarregar as informações
	}
	protected void create (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		cliente.setNome(request.getParameter("nome"));
		cliente.setEmail(request.getParameter("email"));
		cliente.setDatanascimento(request.getParameter("dataNascimento"));
		cliente.setCep(request.getParameter("cep"));
		cliente.setSenha(request.getParameter("senha"));
		cliente.setTelefone(request.getParameter("telefone"));
		clidao.CadastrarCliente(cliente);
		response.sendRedirect("cliente"); // retorna para o controller cliente
		
	}
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		cliente.setIdCliente(Integer.parseInt(request.getParameter("id")));// pega o id que vem atráves do button na view/clientes/index.jsp
		cliente.setNome(request.getParameter("nome"));
		cliente.setEmail(request.getParameter("email"));
		cliente.setDatanascimento(request.getParameter("dataNascimento"));
		cliente.setCep(request.getParameter("cep"));
		cliente.setSenha(request.getParameter("senha"));
		cliente.setTelefone(request.getParameter("telefone"));
		clidao.atualizarCliente(cliente);
		  
		response.sendRedirect("cliente");// retorna para a rota cliente ,que executa o método read() no switch
		
	}
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id= Integer.parseInt(request.getParameter("id"));
		
		cliente=clidao.selectById(id);//selectById retorna o Tipo Cliente
		request.setAttribute("cliente", cliente );
		RequestDispatcher rd=request.getRequestDispatcher("./views/clientes/update.jsp");//caminho que vai redirecionar
		rd.forward(request, response);
		
	}
	
}

