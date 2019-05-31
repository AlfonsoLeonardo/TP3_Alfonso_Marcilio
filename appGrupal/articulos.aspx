<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="articulos.aspx.cs" Inherits="appGrupal.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
  
     <% foreach (var articulo in articulos) { %>
        <div class="col-sm-4">
            <div class="card">
                <img ID="Image3" class="card-img-top" alt="..." src="<%= articulo.URLImagen %>" />
                <div class="card-body">
                    <h5 class="card-title"><%= articulo.Titulo %></h5>
                    <p class="card-text"><%= articulo.Descripcion %></p>
                    <button ID=" <%= articulo.Id %> "  class="btn btn-primary">Quiero este</button>
                </div>
            </div>
            </div>
             <% } %>
        </div>
</asp:Content>
