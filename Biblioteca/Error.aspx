<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Biblioteca.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
        <div style="display: flex; justify-content: center;">
        <div class="card  mb-3" style="width: 40rem; text-align: center; justify-content: center; background-image: linear-gradient(45deg, #F2F2F2, #1C1C1C, #3F51B5) ">
            <img src="/Images/error.jpg" class="card-img-top" alt="Error">
            <div class="card-body">
                <h5 class="card-title">Ha ocurrido un error, comunicate con el administrador.</h5>
                <asp:Label Text="" ID="lblMensaje" runat="server" CssClass="card-text" />
                <div style="padding: 20px;">
                    <asp:Button Text="Home" Id="btnHome" CssClass="btn btn-success" runat="server" onclick="btnHome_Click"/> 
                </div>
            </div>
        </div>
    </div>
</asp:Content>
