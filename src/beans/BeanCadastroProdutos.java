package beans;

/*
 * Classe JAVA que processa dados em memória em tempo de execução.
 * @author: Juman Fernandes Santos Sousa
 * 
 */

public class BeanCadastroProdutos {
	private Long id;
	private String login;
	private String password;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
