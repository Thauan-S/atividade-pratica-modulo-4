package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConectionFactory {
private static final String url="jdbc:mysql://localhost:3306/bdm3";
private static final String user="root";
private static final String password="Domingos.noemia1";
public static Connection conectar()throws Exception{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conexao;
	conexao=DriverManager.getConnection(url,user,password);
	return conexao;
}

}
