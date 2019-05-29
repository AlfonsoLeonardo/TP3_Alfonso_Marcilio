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

            AccesoDatosManager conexion;
            try
            {
                conexion = new AccesoDatosManager();
                conexion.setearConsulta("select codigovoucher from vouchers Where codigovoucher=@voucher");
                conexion.Comando.Parameters.Clear();
                conexion.Comando.Parameters.AddWithValue("@voucher", codigo);
                conexion.abrirConexion();
                conexion.ejecutarConsulta();
                if (conexion.Lector.Read())
                {
                   
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

