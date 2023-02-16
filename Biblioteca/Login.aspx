<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Biblioteca.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-4">
            <h3>Login</h3>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" ID="txtEmail" REQUIRED placeHolder="ejemplo@ejemplo.com" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <asp:TextBox runat="server" ID="txtPassword2" placeHolder="*****" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button runat="server" ID="btnLogin" Text="Ingresar" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
            <a href="/">Cancelar</a>
        </div>
    </div>
</asp:Content>
