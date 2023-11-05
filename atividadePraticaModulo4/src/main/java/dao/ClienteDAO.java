package dao;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;



import connection.ConectionFactory;
import model.Cliente;

public class ClienteDAO {

	public void CadastrarCliente(Cliente cliente) {
		Connection conn = null;
		PreparedStatement pstm = null;
		PreparedStatement ClientePstm=null;
		String sql = "insert into cliente(Nome,Telefone,DataNascimento,Cep,Email,Senha) values(?,?,?,?,?,?)";
		String ClienteQuery="select count(*) from cliente where nome =?";
		try {
			conn = ConectionFactory.conectar();
			ClientePstm=conn.prepareStatement(ClienteQuery);
			ClientePstm.setString(1, cliente.getNome());
			ResultSet CliResultset=ClientePstm.executeQuery();
			if(CliResultset.next() && CliResultset.getInt(1)>0) {
				System.out.println("O Nome de Usuário é inválido, escolha outro");
				return;
			}
			
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, cliente.getNome());
			pstm.setString(2, cliente.getTelefone());
			pstm.setString(3, cliente.getDatanascimento());
			pstm.setString(4, cliente.getCep());
			pstm.setString(5, cliente.getEmail());
			pstm.setString(6, cliente.getSenha());
			pstm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
				if (pstm != null) {
					pstm.close();
				}

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
 public Cliente selectById(int id) {
	 String sql="select * from cliente where idCliente =?";
	 Connection conn=null;
	 PreparedStatement pstm=null;
	 ResultSet rs=null;
	 Cliente cli= null;
	 
	 try {
		conn=ConectionFactory.conectar();
		pstm=conn.prepareStatement(sql);
		pstm.setInt(1, id);
		rs=pstm.executeQuery();
		if(rs.next()) {
				cli=new Cliente();
				cli.setIdCliente(rs.getInt("idCliente"));
				cli.setEmail(rs.getString("Email"));
				cli.setNome(rs.getString("Nome"));
				cli.setSenha(rs.getString("Senha"));
				cli.setTelefone(rs.getString("Telefone"));
				Date dataDoBanco =rs.getDate("DataNascimento");
				SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
				String dataString=formato.format(dataDoBanco);
				cli.setDatanascimento(dataString);
				cli.setCep(rs.getString("Cep"));
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if (conn != null) {
				conn.close();
			}
			if (pstm != null) {
				pstm.close();
			}
			if (rs != null) {
				rs.close();
			}

		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	return cli;
 }
	public void removerPorId(int id ) {
		
		String sql1="delete from reserva where Cliente_idCliente=?";
		String sql2="delete from contato where Cliente_idcliente=?";
		String sql = "delete from cliente where idCliente=?";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		PreparedStatement pstm1 = null;
		PreparedStatement pstm2 = null;
		try {
			conn = ConectionFactory.conectar();
			pstm1 = conn.prepareStatement(sql1);
			pstm1.setInt(1, id);
			pstm1.execute();
			
			pstm2=conn.prepareStatement(sql2);
			pstm2.setInt(1, id);
			pstm2.execute();
			
			pstm=conn.prepareStatement(sql);
			pstm.setInt(1, id);
//			pstm.setString(2, cliente.getSenha());
//			pstm.setString(3, cliente.getEmail());
			pstm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
				if (pstm != null) {
					pstm.close();
				}
				if (pstm1 != null) {
					pstm1.close();
				}
				if (pstm2 != null) {
					pstm2.close();
				}

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public void atualizarCliente(Cliente cliente) {

		Connection conn = null;
		PreparedStatement pstm = null;
		String sql = "update cliente set Nome=?,Telefone=?,DataNascimento=?,Cep=?,email=?,Senha=?   where idCliente=?";
		try {
			conn = ConectionFactory.conectar();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, cliente.getNome());
			pstm.setString(2, cliente.getTelefone());
			pstm.setString(3, cliente.getDatanascimento());
			pstm.setString(4, cliente.getCep());
			pstm.setString(5, cliente.getEmail());
			pstm.setString(6, cliente.getSenha());
			pstm.setInt(7, cliente.getIdCliente());
			pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
				if (pstm != null) {
					pstm.close();
				}

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}

	public List<Cliente> listarClientes() {
		List<Cliente> clientes = new ArrayList<Cliente>();
		String sql = "select * from cliente";
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rset=null;
		try {
			conn=ConectionFactory.conectar();
			pstm=conn.prepareStatement(sql);
			rset=pstm.executeQuery();
			while(rset.next()) {
				Cliente cliente= new Cliente();
				cliente.setIdCliente(rset.getInt("idCliente"));
				cliente.setNome(rset.getString("Nome"));
				cliente.setTelefone(rset.getString("Telefone"));
				cliente.setDatanascimento(rset.getString("Datanascimento"));
				cliente.setCep(rset.getString("Cep"));
				cliente.setEmail(rset.getString("Email"));
				cliente.setSenha(rset.getString("Senha"));
				clientes.add(cliente);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rset != null) {
					rset.close();
				}
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return clientes;
	}
}
