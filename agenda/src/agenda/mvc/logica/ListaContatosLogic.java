package agenda.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import agenda.jdbc.dao.ContatoDao;
import agenda.modelo.Contato;

public class ListaContatosLogic implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Contato> contatos = new ContatoDao().getLista();
		req.setAttribute("contatos", contatos);
		return "/WEB-INF/jsp/listar-contatos.jsp";
	}

}
