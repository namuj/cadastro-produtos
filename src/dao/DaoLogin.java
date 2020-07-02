package dao;
/*
 * Classe resoponsavel por se comunicar com o Banco de Dados através de uma Query para validar o Login
 * @author: Juman Fernandes Santos Sousa
 * 
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnection;

public class DaoLogin {
	
	private Connection connection;
	
	public DaoLogin() {
		connection = SingleConnection.getConnection();
	}
	public boolean validarLogin(String login, String password) throws Exception{
		
		String sql="select * from usuario where login='"+login+"' and password='"+password+"'";
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultSet= statement.executeQuery();
		if(resultSet.next()) {
			return true;
		}else {
			return false; 
		}
		
	}

}
