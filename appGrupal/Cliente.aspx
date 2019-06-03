<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="appGrupal.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <form>

        <div class="form-group">
            <!-- DNI-->
            <label for="DNI" class="control-label">DNI</label>
            <input type="text" class="form-control" id="DNI" onfocusout="mostrar()" name="DNI" placeholder="12345678">
        </div>

        <div class="form-group" id="mostrar1" style="display:none">
            <!-- Nombre -->
            <label for="Nombre" class="control-label">Nombres </label>
            <input type="text" class="form-control" id="Nombre" name="Nombre" placeholder="Maxi Lorenzo">
        </div>

        <div class="form-group" id="mostrar2" style="display:none">
            <!-- Apellido-->
            <label for="Apellido" class="control-label">Apellido</label>
            <input type="text" class="form-control" id="Apellido" name="Apellido" placeholder="Sar">
        </div>

        <div class="form-group" id="mostrar3" style="display:none">
            <!-- Direccion -->
            <label for="Direccion_id" class="control-label">Direccion </label>
            <input type="text" class="form-control" id="street1_id" name="Direccion" placeholder="Silicon Valley">
        </div>

         <div class="form-group" id="mostrar4" style="display:none">
            <!-- Email -->
            <label for="Email" class="control-label">Email </label>
            <input type="text" class="form-control" id="Email" name="Email" placeholder="msar@icloud.com">
        </div>

        <div class="form-group" id="mostrar5" style="display:none">
            <!-- Ciudad-->
            <label for="Ciudad_id" class="control-label">Ciudad</label>
            <input type="text" class="form-control" id="Ciudad" name="Ciudad" placeholder="San Francisco">
        </div>


        <div class="form-group" id="mostrar6" style="display:none">
            <!-- codigo postal-->
            <label for="CodigoPostal" class="control-label">Codigo Postal</label>
            <input type="text" class="form-control" id="CodigoPostal" name="Codigo Postal" placeholder="#####">
        </div>

        <div class="form-group" id="mostrar7" style="display:none">
            <!-- Registracion -->
            <button type="submit" class="btn btn-primary">Registracion!</button>
        </div>

    </form>

    <script>
        function mostrar() {
            document.getElementById('mostrar1').style.display = "block"; 
            document.getElementById('mostrar2').style.display = "block"; 
            document.getElementById('mostrar3').style.display = "block"; 
            document.getElementById('mostrar4').style.display = "block"; 
            document.getElementById('mostrar5').style.display = "block"; 
            document.getElementById('mostrar6').style.display = "block"; 
            document.getElementById('mostrar7').style.display = "block"; 
        }
</script>
</asp:Content>
