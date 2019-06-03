﻿using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appGrupal
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        public List<Producto> Productos = new List<Producto>();

        public void Page_Load(object sender, EventArgs e)
        {
            Productos = (new ProductoNegocio().MostrarProductos());
        }

        /*
        public void btnOK_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Cliente.aspx");
            

        }
        */
    }
}