using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using Dominio;

namespace Negocio
{
    public class ArticuloNegocio
    {
        public List<Producto> MostrarArticulos()
        {
            AccesoDatosManager conexion;
            try
            {
               
                List<Producto> listado = new List<Producto>();
                Producto producto = new Producto();

                conexion = new AccesoDatosManager();
                conexion.setearConsulta("select * from productos");
                conexion.Comando.Parameters.Clear();
                //conexion.Comando.Parameters.AddWithValue("@Dni", Dni);

                conexion.abrirConexion();
                conexion.ejecutarConsulta();
                while (conexion.Lector.Read())
                {

                    producto.Id = (long)conexion.Lector["id"];
                    producto.Titulo = conexion.Lector["titulo"].ToString();
                    producto.Descripcion = conexion.Lector["descripcion"].ToString();
                    producto.URLImagen = conexion.Lector["urlimagen"].ToString();

                    listado.Add(producto);

                }
                return listado;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
