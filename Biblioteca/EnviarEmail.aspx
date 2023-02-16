<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EnviarEmail.aspx.cs" Inherits="Biblioteca.EnviarEmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
        <div class="col-4">
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">Asunto</label>
                    <asp:TextBox runat="server" ID="txtAsunto" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">Mensaje</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" ID="txtMensaje" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Button runat ="server" ID="btnAceptar" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnAceptar_Click"/>
        </div>
    </div>
</asp:Content>
