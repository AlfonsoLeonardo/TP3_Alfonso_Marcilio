<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="articulos.aspx.cs" Inherits="appGrupal.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        

        <div class="card-deck">
            
            <div class="card">
                <asp:Image ID="Image3" runat="server" class="card-img-top" alt="..." ImageUrl="~/img/tv_led.jpg" />
                <div class="card-body">
                    <h5 class="card-title">Tv Led 55"</h5>
                    <p class="card-text">Una TV grande, para ver al mas grande: Chiche Gelblung</p>
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Quiero este" />
                </div>
            </div>
            
        </div>


    </div>
</asp:Content>
