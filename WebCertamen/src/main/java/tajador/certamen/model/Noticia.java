package tajador.certamen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Noticia {
	
	
	@Id
	@GeneratedValue
	private long id;
	
	@Column
	private String titulo;
	
	@Column
	private String cuerpo;

	

	public Noticia(long id, String titulo, String cuerpo) {
		this.id = id;
		this.titulo = titulo;
		this.cuerpo = cuerpo;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Noticia() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCuerpo() {
		return cuerpo;
	}

	public void setCuerpo(String cuerpo) {
		this.cuerpo = cuerpo;
	}
	
	
	

}
