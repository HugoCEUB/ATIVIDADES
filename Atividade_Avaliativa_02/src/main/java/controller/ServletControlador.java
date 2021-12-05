package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CadastrarDisciplinaNota;
import model.ConsultarDisciplinasNotas;

/**
 * Servlet implementation class ServletControlador
 */
@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletControlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String acao = request.getParameter("acao");
		
		ConsultarDisciplinasNotas consultar = (ConsultarDisciplinasNotas) getServletContext().getAttribute(ContexListener.SISTEMA_DISCIPLINA_NOTAS);
		
		String resposta = "menu.jsp";
		if ("cadastroDisciplina".equals(acao)) 
		{
			resposta = "cadastroDisciplinas.jsp";
		}
		else if ("confirmarCadastro".equals(acao))
		{
			CadastrarDisciplinaNota e = new CadastrarDisciplinaNota();
			e.setNomeAluno(request.getParameter("nomeAluno"));
			e.setDisciplina(request.getParameter("disciplina"));
			e.setNota1(request.getParameter("nota1"));
			e.setNota2(request.getParameter("nota2"));
			e.setNota3(request.getParameter("nota3"));
			e.setNota4(request.getParameter("nota4"));
						
			consultar.adicionar(e);
			
			request.setAttribute("lista", consultar.listarCadastrarDisciplinaNota());
			
			resposta = "listaDisciplinas.jsp";
		}
		else if ("listar".equals(acao))
		{
			request.setAttribute("lista", consultar.listarCadastrarDisciplinaNota());
			resposta = "listaDisciplinas.jsp";
		}
		request.getRequestDispatcher(resposta).forward(request, response);
	}

}
