<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="appGrupal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

    <div class="form-row">
        <div class="form-group col-3">
            <label>Nombre</label>
            <asp:TextBox ID="TextNom" class="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col-3">
            <label>Apellido</label>
            <asp:TextBox ID="TextApell" class="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col-3">
            <label>Email</label>
            <asp:TextBox ID="TextMail" type="email" class="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col">
        </div>
        <div class="form-group col">
        </div>
    </div>


    <div class="form-row">
        <div class="form-group col-2">
            <label>Direccion</label>
            <asp:TextBox ID="TextDirecc" class="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col-1">
            <label>Numero</label>
            <asp:TextBox ID="TextNum" class="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col">
            <label>Ciudad</label>
            <asp:TextBox ID="TextCiudad" class="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col-1">
        </div>
        <div class="form-group col-2">
        </div>
        <div class="form-group col-2">
        </div>
    </div>


    <div class="form-row">
        <div class="form-group col-3">
            <label>Provincia</label>
            <asp:TextBox ID="TextProv" class="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col-1">
            <label>CP</label>
            <asp:TextBox ID="TextBox2" class="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col-2">
        </div>
        <div class="form-group col-2">
        </div>
        <div class="form-group col-3">
        </div>
    </div>
  
    
    <div class="form-row">
        <div class="form-group col">
        </div>
        <div class="form-group col">
            <asp:Button ID="Button1" runat="server" align="right" class="btn btn-primary" Text="Participar!" />
        </div>
        <div class="form-group col">
        </div>
        <div class="form-group col">
        </div>
        <div class="form-group col">
        </div>
    </div>



</asp:Content>
