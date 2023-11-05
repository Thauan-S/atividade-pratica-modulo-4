package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


import model.Contato;
import connection.ConectionFactory;
import model.Cliente;
public class ContatoDAO {
 public void inserirMensagem(Contato contato) {
	 String sql="insert into contato (Assunto,Mensagem,Cliente_idCliente)values(?,?,?)";
	 Connection conn=null;	
	 PreparedStatement pstm=null;
	 try {
		conn=ConectionFactory.conectar();
		pstm=conn.prepareStatement(sql);
		pstm.setString(1,contato.getAssunto() );
		pstm.setString(2, contato.getMensagem());
		pstm.setInt(3, contato.getCliente().getIdCliente());
		pstm.execute();
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}
			if(pstm!=null) {
				pstm.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
 }
 public void apagarMensagem(int id) {
	String slq="delete from contato where idContato=?";
	 Connection conn=null;
	PreparedStatement pstm=null;
	try {
		conn=ConectionFactory.conectar();
		pstm=conn.prepareStatement(slq);
		pstm.setInt(1, id);
		pstm.execute();
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}
			if(pstm!=null) {
				pstm.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
 }
 public void atualizarMensagem(Contato contato) {
	 String sql="update contato set Assunto=?,Mensagem=? where idContato=? ";
	 Connection conn= null;
	 PreparedStatement pstm= null;
	 try {
		conn=ConectionFactory.conectar();
		pstm=conn.prepareStatement(sql);
		pstm.setString(1, contato.getAssunto());
		pstm.setString(2, contato.getMensagem());
		pstm.setInt(3, contato.getIdContato());
		pstm.execute();
	} catch (Exception e) {
		// TODO: handle exception
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}
			if(pstm!=null) {
				pstm.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
 }
 public List<Contato> listaMensagens(){
	 List<Contato>contatos=new ArrayList<Contato>();
	 String sql="select contato.idContato,cliente.nome,contato.mensagem,contato.assunto from contato  join cliente on Cliente.idCliente=Contato.Cliente_idCliente";
	 Connection conn=null;
	 PreparedStatement pstm=null;
	 ResultSet rset=null;
	 try {
		conn=ConectionFactory.conectar();
		pstm=conn.prepareStatement(sql);
		rset=pstm.executeQuery();
		while(rset.next()) {
			Contato contato= new Contato();
			Cliente cliente=new Cliente();
		contato.setIdContato(rset.getInt("idContato"));
		contato.setMensagem(rset.getString("Mensagem"));
		contato.setAssunto(rset.getString("Assunto"));
		cliente.setNome(rset.getString("Nome"));
		contato.setCliente(cliente);
		contatos.add(contato);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}
			if(pstm!=null) {
				pstm.close();
			}
			if(rset!=null) {
				rset.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	 return contatos;
 }
 public Contato FindById(int id) {
	 Contato contato= null;
	 String sql="select * from contato where idContato=?";
	 Connection conn=null;
	 PreparedStatement pstm=null;
	 ResultSet rset=null;
	 try {
		conn=ConectionFactory.conectar();
		pstm=conn.prepareStatement(sql);
		pstm.setInt(1,id);
		rset=pstm.executeQuery();
		if(rset.next()) {
		contato=new Contato();
		contato.setIdContato(rset.getInt("idContato"));
		contato.setMensagem(rset.getString("Mensagem"));
		contato.setAssunto(rset.getString("Assunto"));
		
		}
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(conn!=null) {
				conn.close();
			}
			if(pstm!=null) {
				pstm.close();
			}
			if(rset!=null) {
				rset.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	 return contato;
 }
	 
 
}
