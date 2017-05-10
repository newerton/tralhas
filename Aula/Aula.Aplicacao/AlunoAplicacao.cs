using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Aula.Dominio;
using Aula.Repositorio;

namespace Aula.Aplicacao
{
    public class AlunoAplicacao
    {
        public void Iserir(Aluno aluno)
        {
            var query = "";
            query += "INSERT INTO aluno (Nome, Mae, DataNascimento)";
            query += string.Format(
                "VALUES ('0', '1', '2')",
                aluno.Nome, aluno.Mae, aluno.DataNascimento
            );
            using(contexto = new Contexto())
            {
                contexto.ExecutaComando(query);
            }
        }

        public void
    }
}