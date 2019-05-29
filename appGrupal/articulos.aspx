<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="articulos.aspx.cs" Inherits="appGrupal.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        

        <div class="card-deck">
            <div class="card">
                
                <asp:Image ID="Image3" runat="server" class="card-img-top" alt="..." ImageUrl="~/img/tv_led.jpg" />
                <div class="card-body">
                    <h5 class="card-title">Tv Led 55"</h5>
                    <p class="card-text">Una TV grande, para ver al mas grande: Chiche Gelblung</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Quiero la TV!" />
                </div>
            </div>
            <div class="card">
                
                <asp:Image ID="Image2" runat="server" class="card-img-top" alt="..." ImageUrl="~/img/ps4.jpg" /> 
                <div class="card-body">
                    <h5 class="card-title">Playstation 4</h5>
                    <p class="card-text">Una PS4 para darle a la bendicion para que te deje jugar con su mama</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="NO, mejor la PS4!!!!" />
                </div>
            </div>
            <div class="card">
                
                <asp:Image ID="Image1" runat="server" class="card-img-top" alt="..." ImageUrl="~/img/mistery_box.jpg" /> 
                <div class="card-body">
                    <h5 class="card-title">Una caja misteriosa</h5>
                    <p class="card-text">Una caja Misteriosa! UNA CAJA MISTERIOSA!!!</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="LA CAJA MISTERIOSA!" />
                </div>
            </div>
        </div>


    </div>
</asp:Content>
