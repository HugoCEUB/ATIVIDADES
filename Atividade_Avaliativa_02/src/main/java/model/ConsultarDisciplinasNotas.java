package model;

import java.util.ArrayList;
import java.util.List;

public class ConsultarDisciplinasNotas {
	private List<CadastrarDisciplinaNota> cadastrarDisciplinaNota = new ArrayList<CadastrarDisciplinaNota>();
	
	public void adicionar(CadastrarDisciplinaNota e)
	{
		cadastrarDisciplinaNota.add(e);
	}
	public List<CadastrarDisciplinaNota> listarCadastrarDisciplinaNota()
	{
		return cadastrarDisciplinaNota;
	}
}
