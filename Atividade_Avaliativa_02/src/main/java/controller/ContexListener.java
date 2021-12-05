package controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import model.ConsultarDisciplinasNotas;

@WebListener
public class ContexListener implements ServletContextListener {

	public static final String SISTEMA_DISCIPLINA_NOTAS = "consultarDisciplinasNotas";
	@Override
	public void contextInitialized(ServletContextEvent event)
	{
		// TODO auto-generated method stub
		ServletContext context = event.getServletContext();
		context.setAttribute(SISTEMA_DISCIPLINA_NOTAS, new ConsultarDisciplinasNotas());
	}
	@Override
	public void contextDestroyed(ServletContextEvent event)
	{
		// TODO auto-generated method stub
		ServletContext context = event.getServletContext();
		context.removeAttribute(SISTEMA_DISCIPLINA_NOTAS);
	}
}
