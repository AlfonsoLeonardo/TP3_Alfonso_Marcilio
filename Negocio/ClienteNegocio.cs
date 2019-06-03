using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using Dominio;


namespace Negocio
{
    public class ClienteNegocio
    {
        public bool SiclienteExiste(long Dni)
        {

            

            AccesoDatosManager conexion;
            try
            {
                Cliente cliente = new Cliente();

                

                conexion = new AccesoDatosManager();
                conexion.setearConsulta("select * from Clientes  Where Dni=@Dni");
                conexion.Comando.Parameters.Clear();
                conexion.Comando.Parameters.AddWithValue("@Dni", Dni);

                conexion.abrirConexion();
                conexion.ejecutarConsulta();
                if (conexion.Lector.Read())
                {
                        cliente.Id = (int)conexion.Lector["Id"];
                        cliente.Nombre = conexion.Lector["Nombre"].ToString();
                        cliente.Apellido =conexion.Lector["Apellido"].ToString();
                        cliente.Direccion = conexion.Lector["Direccion"].ToString();
                        cliente.Email = conexion.Lector["Email"].ToString();
                        cliente.Ciudad = conexion.Lector["Ciudad"].ToString();
                        cliente.CodigoPostal = conexion.Lector["CodigoPostal"].ToString();
                        cliente.FechaRegistro = (DateTime)conexion.Lector["FechaRegistro"];
                        Cliente.ClienteExistente = cliente; //guardo la todos los datos almacenado para acceder

                    return true;
                }
                else
                {
                    

                    return false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
