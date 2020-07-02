package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.BeanCadastroProdutos;
import connection.SingleConnection;

public class DaoUsuario {
	private Connection connection;
	
	public DaoUsuario() {
		connection = SingleConnection.getConnection();
	}
	
	public void salvar(BeanCadastroProdutos usuario){
		try {
		String sql = "insert into usuario(login,password) values (?,?)";
		PreparedStatement insert = connection.prepareStatement(sql);
		insert.setString(1, usuario.getLogin());
		insert.setString(2, usuario.getPassword());
		insert.execute();
		connection.commit();
		}catch(Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
	
	public List<BeanCadastroProdutos> listar() throws Exception{
		
		List<BeanCadastroProdutos> lista = new ArrayList<BeanCadastroProdutos>();
		
		String sql = "select * from usuario";
		
		PreparedStatement statement= connection.prepareStatement(sql);
		ResultSet resultSet =statement.executeQuery();
		while(resultSet.next()) {
			BeanCadastroProdutos beanCadastroProdutos = new BeanCadastroProdutos();
			beanCadastroProdutos.setId(resultSet.getLong("Id"));
			beanCadastroProdutos.setLogin(resultSet.getString("login"));
			beanCadastroProdutos.setPassword(resultSet.getString("password"));
			
			lista.add(beanCadastroProdutos);
		}
		
		return lista;
	}
	
	public void delete (String login) {
		try {
			String sql="delete from usuario where login ='"+login+"'";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.execute();
			connection.commit();
		}catch(Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

	public BeanCadastroProdutos consultar(String login) throws Exception {
		String sql = "select * from usuario where login='"+login+"'";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet =preparedStatement.executeQuery();
		if(resultSet.next()) {
			BeanCadastroProdutos beanCadastroProdutos = new BeanCadastroProdutos();
			beanCadastroProdutos.setId(resultSet.getLong("Id"));
			beanCadastroProdutos.setLogin(resultSet.getString("login"));
			beanCadastroProdutos.setPassword(resultSet.getString("password"));
			
			return beanCadastroProdutos;
		}
		
		
		
		return null;
	}

	public void atualizar(BeanCadastroProdutos usuario) {
		try {
			String sql ="update usuario set login = ?, password = ? where id ="+usuario.getId();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, usuario.getLogin());
			preparedStatement.setString(2, usuario.getPassword());
			preparedStatement.executeUpdate();
			connection.commit();
		}catch(Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
	}
	
	
}
