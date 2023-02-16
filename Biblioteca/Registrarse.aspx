<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Biblioteca.Registrarse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col-4">
            <h3>Creá tu perfil</h3>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" ID="txtEmail" placeHolder="ejemplo@ejemplo.com" CssClass="form-control" ></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <asp:TextBox runat="server" ID="txtPassword" placeHolder="*****" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button runat="server" ID="btnRegistrarse" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnRegistrarse_Click"/>
            <a href="/">Cancelar</a>
        </div>
    </div>          
</asp:Content>
