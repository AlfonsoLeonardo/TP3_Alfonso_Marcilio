<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="appGrupal.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <form>

        <div class="form-group">
            <!-- DNI-->
            <label for="DNI" class="control-label">DNI</label>
            <input type="text" class="form-control" id="DNI" name="DNI" placeholder="12345678">
        </div>

        <div class="form-group">
            <!-- Nombre -->
            <label for="Nombre" class="control-label">Nombres </label>
            <input type="text" class="form-control" id="Nombre" name="Nombre" placeholder="Maxi Lorenzo">
        </div>

        <div class="form-group">
            <!-- Apellido-->
            <label for="Apellido" class="control-label">Apellido</label>
            <input type="text" class="form-control" id="Apellido" name="Apellido" placeholder="Sar">
        </div>

        <div class="form-group">
            <!-- Direccion -->
            <label for="Direccion_id" class="control-label">Direccion </label>
            <input type="text" class="form-control" id="street1_id" name="Direccion" placeholder="Silicon Valley">
        </div>

         <div class="form-group">
            <!-- Email -->
            <label for="Email" class="control-label">Email </label>
            <input type="text" class="form-control" id="Email" name="Email" placeholder="msar@icloud.com">
        </div>

        <div class="form-group">
            <!-- Ciudad-->
            <label for="Ciudad_id" class="control-label">Ciudad</label>
            <input type="text" class="form-control" id="Ciudad" name="Ciudad" placeholder="San Francisco">
        </div>


        <div class="form-group">
            <!-- codigo postal-->
            <label for="CodigoPostal" class="control-label">Codigo Postal</label>
            <input type="text" class="form-control" id="CodigoPostal" name="Codigo Postal" placeholder="#####">
        </div>

        <div class="form-group">
            <!-- Registracion -->
            <button type="submit" class="btn btn-primary">Registracion!</button>
        </div>

    </form>
</asp:Content>
