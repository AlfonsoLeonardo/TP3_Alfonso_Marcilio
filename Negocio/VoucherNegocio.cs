using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;


namespace Negocio
{
   public class VoucherNegocio
    {
        public bool validarVoucher(string codigo)
        {
            Voucher voucher = new Voucher();

            AccesoDatosManager conexion;
            try
            {   
                conexion = new AccesoDatosManager();
                conexion.setearConsulta("select * from vouchers Where codigovoucher=@voucher");
                conexion.Comando.Parameters.Clear();
                conexion.Comando.Parameters.AddWithValue("@voucher", codigo);
                conexion.abrirConexion();
                conexion.ejecutarConsulta();
                if (conexion.Lector.Read())
                {
                    voucher.Id = (long)conexion.Lector["Id"];
                    voucher.VoucherCodigo = conexion.Lector["codigovoucher"].ToString();
                    voucher.Estado = (bool)conexion.Lector["Estado"];

                    Voucher.voucherenlinea = voucher;

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
        public void finderegistro()
        {
            AccesoDatosManager accesoDatos = new AccesoDatosManager();
            try
            {
                DateTime fecha= DateTime.Today;
                accesoDatos.setearConsulta("update Vouchers Set  IdCliente=@IdCliente, IdProducto=@IdProducto, Estado=@Estado, FechaRegistro=@FechaRegistro where IdIngrediente=" + Voucher.voucherenlinea.Id);
                accesoDatos.Comando.Parameters.Clear();
                accesoDatos.Comando.Parameters.AddWithValue("@IdCliente", Cliente.ClienteExistente.Id);
                accesoDatos.Comando.Parameters.AddWithValue("@IdProducto",Producto.productoenlinea.Id);
                accesoDatos.Comando.Parameters.AddWithValue("@Estado", false);
                accesoDatos.Comando.Parameters.AddWithValue("@FechaRegistro", fecha.ToLocalTime());
   
                


             
                accesoDatos.abrirConexion();
                accesoDatos.ejecutarAccion();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                accesoDatos.cerrarConexion();
            }
        }


    }
}

