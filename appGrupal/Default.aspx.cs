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
        ProductoNegocio articulo = new ProductoNegocio();


        protected void Page_Load(object sender, EventArgs e)
        {
            articulo.MostrarArticulos();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (VoucherNegocio.validarVoucher(TextBox1.Text) == true)
            { 
                
            Response.Redirect("articulos.aspx");
            }
            else
            {
                alerta.Style["display"]="visible";
            }
            
        }




    }
}