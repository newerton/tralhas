
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;

namespace Aula.Repositorio
{
    public class Contexto
    {   
        private readonly NpgsqlConnection Conn;
        public Contexto()
        {
            Conn = new NpgsqlConnection("Host=localhost;Username=postgres;Password=root;Database=postgres");
            Conn.Open();
        }

        public void ExecutaComando(string Query)
        {
            var cmdComando = new NpgsqlCommand{
                CommandText = Query,
                Connection = Conn
            };
            cmdComando.ExecuteNonQuery();
        }

        public NpgsqlDataReader ExecutaComandoRetorno(string Query)
        {
            var cmdComando = new NpgsqlCommand(Query, Conn);
            return cmdComando.ExecuteReader();
        }
    }
}