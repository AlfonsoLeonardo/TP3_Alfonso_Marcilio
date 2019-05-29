using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Acceso_Datos;



    public class BuscaVoucher
    {


        public bool validarVoucher(string voucher)
        {

            AccesoDatosManager conexion;
            try
            {
                conexion = new AccesoDatosManager();
                conexion.setearConsulta("select codigovoucher from vouchers Where codigovoucher=@voucher");
                conexion.Comando.Parameters.Clear();
                conexion.Comando.Parameters.AddWithValue("@voucher", voucher);
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


