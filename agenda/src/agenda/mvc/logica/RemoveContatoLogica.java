package agenda.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import agenda.jdbc.dao.ContatoDao;
import agenda.modelo.Contato;

public class RemoveContatoLogica implements Logica {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		long id = Long.parseLong(request.getParameter("id"));
		Contato contato = new Contato();
		contato.setId(id);
		Connection connection = (Connection) request.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection);
		dao.remove(contato);
		System.out.println("Excluindo contato...");
		return "mvc?logica=ListaContatosLogic";
	}
}
