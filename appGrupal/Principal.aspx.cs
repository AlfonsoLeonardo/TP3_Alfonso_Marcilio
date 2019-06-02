using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;
using AccesoDatos;


namespace appGrupal
{
    
    
    public partial class _Default : Page
    {
        VoucherNegocio VoucherNegocio = new VoucherNegocio();
        Producto producto = new Producto();
        List<Producto> listado = new List<Producto>();
        ProductoNegocio Producto = new ProductoNegocio();


        protected void Page_Load(object sender, EventArgs e)
        {
            Producto.MostrarProductos();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (VoucherNegocio.validarVoucher(TextBox1.Text) == true)
            { 
                
            Response.Redirect("Producto.aspx");
            }
            else
            {
                alerta.Style["display"]="visible";
            }
            
        }




    }
}