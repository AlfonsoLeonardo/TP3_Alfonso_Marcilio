<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="appGrupal.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
  
     <% foreach (var Producto in Productos) { %>
        <div class="col-sm-4">
            <div class="card">
                <img ID="Image3" class="card-img-top" alt="..." src="<%= Producto.URLImagen %>" />
                <div class="card-body">
                    <h5 class="card-title"><%= Producto.Titulo %></h5>
                    <p class="card-text"><%= Producto.Descripcion %></p>
                    <button ID=" <%= Producto.Id %> "  class="btn btn-primary">Quiero este</button>
                </div>
            </div>
            </div>
             <% } %>
        </div>
</asp:Content>
