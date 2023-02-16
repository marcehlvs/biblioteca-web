<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BibliotecaLista.aspx.cs" Inherits="Biblioteca.BibliotecaLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Label Text="Filtrar" runat="server"></asp:Label>
                <asp:TextBox runat="server" ID="txtFiltro" CssClass="form-control" AutoPostBack="true" OnTextChanged="filtro_TextChanged" ></asp:TextBox>                
            </div>
        </div>
    </div>
    
    <asp:GridView ID="dgvListaLibros" runat="server" CssClass="table"
        AutoGenerateColumns="false" DataKeyNames="IdLibros" 
        OnSelectedIndexChanged="dgvListaLibros_SelectedIndexChanged"
        OnPageIndexChanging="dgvListaLibros_PageIndexChanging" AllowPaging="true"
        PageSize="5">
        <Columns>
            <asp:BoundField HeaderText="Categoria" DataField="Categoria.Categoria"/> 
            <asp:BoundField HeaderText="Titulo" DataField="Titulo"/> 
            <asp:BoundField HeaderText="Autor" DataField="Autor"/> 
            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion"/>
            <asp:BoundField HeaderText="Fecha de publicación" DataField="FechaPublicacion" />
            <asp:CheckBoxField HeaderText="Disponibilidad" DataField="Disponibilidad" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="True" SelectText="✍" />
            
        </Columns>
    </asp:GridView>

    <a href="FormularioLibro.aspx" class="btn btn-primary">Agregar</a>

</asp:Content>



    

