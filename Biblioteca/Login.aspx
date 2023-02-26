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
                <asp:RegularExpressionValidator ErrorMessage="⚠️ El formato email es incorrecto." ControlToValidate="txtEmail" runat="server"
                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <asp:TextBox runat="server" ID="txtPassword" placeHolder="*****" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button runat="server" ID="btnLogin" Text="Ingresar" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
            <a href="/">Cancelar</a>
        </div>
    </div>
</asp:Content>
