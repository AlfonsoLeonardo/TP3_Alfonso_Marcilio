<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="appGrupal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-4">
        </div>        

        <div class="col-4">   
        
            
          
                <div class="form-group">

                    <asp:Label ID="Label1" runat="server" Text="Label">Ingrese su Voucher</asp:Label>
                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Codigo de Voucher" runat="server"></asp:TextBox>
                    <small id="emailHelp" class="form-text text-muted">Revise el dorso de su cupon intangible</small>

                </div>
            //
          
                <asp:Button ID="Button1" runat="server" Text="Ingresar" class="btn btn-primary" OnClick="Button1_Click" />
            
        </div>
        <div class="col-4">
        </div>        
    </div>
  

</asp:Content>
