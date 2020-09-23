package br.edu.insper;

// Tipico java bin - recebe info do banco de dados
public class Tarefa {
		
	private Integer id;
	private String nome;
	private String entrega;
	private String descricao;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEntrega() {
		return entrega;
	}
	public void setEntrega(String date) {
		this.entrega = date;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String string) {
		this.descricao = string;
	}
	
}