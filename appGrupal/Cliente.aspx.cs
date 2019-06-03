using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace appGrupal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ClienteNegocio clientito = new ClienteNegocio();
        Cliente cliente = new Cliente();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void DNI_OnTextChanged(object sender, EventArgs e)
        {
            if (clientito.SiclienteExiste(Convert.ToInt64(DNI.Text)) == true)
            {

            }
        }

    }
}