package br.insper.edu;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


public class DAO {
	// Data Access Object
	private Connection connection = null;
	
	public DAO () throws ClassNotFoundException, SQLException {
		// Mudar SEMPRE - Vai ter info de conexão de outra pessoa
		// Priorizar java.sql
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/meus_dados?serverTimezone=UTC", "root", "^^b^@JVg^x!6");
	}
	
	public List<Pessoa> getLista() throws SQLException {
		List<Pessoa> pessoas = new ArrayList<Pessoa>();
		
		PreparedStatement stmt = connection.prepareStatement("SELECT * FROM pessoa;");
		ResultSet rs = stmt.executeQuery();
		
		while(rs.next()) {
			Pessoa pessoa = new Pessoa();
			
			pessoa.setId(rs.getInt("id"));
			pessoa.setNome(rs.getString("nome"));
			Calendar data = Calendar.getInstance();
			data.setTime(rs.getDate("nascimento"));
			pessoa.setNascimento(data);
			pessoa.setAltura(rs.getDouble("altura"));
			pessoas.add(pessoa);
		}
		
		rs.close();
		stmt.close();
		
		return pessoas;
	}
	
	// Inserindo dados no DAO
	public void adiciona(Pessoa pessoa) throws SQLException {
		// Primeira coisa: criar sql
		// Preparar statement e executar
		String sql = "INSERT INTO Pessoa (nome, idade) VALUES (?,?)";
		// Prepared statement substitui os ??
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, pessoa.getNome());
		stmt.setDate(2, new java.sql.Date(pessoa.getNascimento().getTimeInMillis()));
		stmt.setDouble(3,pessoa.getAltura());
		stmt.execute();
		stmt.close();
	}
	
	public void altera(Pessoa pessoa) throws SQLException {
		String sql = "UPDATE Pessoas SET " + "nome=?, nascimento=?, altura=? WEHRE id=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setNString(1, pessoa.getNome());
		stmt.setDate(2, (java.sql.Date) new Date(pessoa.getNascimento().getTimeInMillis()));
		stmt.setDouble(3, pessoa.getAltura());
		stmt.setInt(4, pessoa.getId());
		stmt.execute();
		stmt.close();
	}
	
	public void remove(Integer id) throws SQLException {
		PreparedStatement stmt = connection.prepareStatement("DELETE FROM Pessoa WHERE id=?");
		stmt.setLong(1,  id);
		stmt.execute();
		stmt.close();
	}
	
	public void close() throws SQLException {
		connection.close();
	}
	
}
