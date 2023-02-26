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
    
    <asp:GridView ID="dgvListaLibros" runat="server" CssClass="table-light"
        AutoGenerateColumns="false" BorderColor="White" DataKeyNames="IdLibros" 
        OnSelectedIndexChanged="dgvListaLibros_SelectedIndexChanged"
        OnPageIndexChanging="dgvListaLibros_PageIndexChanging" AllowPaging="true"
        PageSize="5">
        <RowStyle BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:BoundField HeaderText="Categoria" ItemStyle-HorizontalAlign="Center" DataField="Categoria.Categoria" 
                ItemStyle-Font-Size="14px" ItemStyle-ForeColor="white"/> 
            <asp:BoundField HeaderText="Titulo" ItemStyle-HorizontalAlign="Center" DataField="Titulo"
                ItemStyle-Font-Size="14px" ItemStyle-ForeColor="white"/> 
            <asp:BoundField HeaderText="Autor" ItemStyle-HorizontalAlign="Center" DataField="Autor"
                ItemStyle-Font-Size="14px" ItemStyle-ForeColor="white"/> 
            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion"
                ItemStyle-Font-Size="14px" ItemStyle-ForeColor="white"/>
            <asp:BoundField HeaderText="Fecha de publicación" ItemStyle-HorizontalAlign="Center" DataField="FechaPublicacion"
                ItemStyle-Font-Size="14px" ItemStyle-ForeColor="white"/>
            <asp:CheckBoxField HeaderText="Disponibilidad" ItemStyle-HorizontalAlign="Center" DataField="Disponibilidad" />
            <asp:CommandField HeaderText="Acción" ItemStyle-HorizontalAlign="Center" ShowSelectButton="True" SelectText="✍" />
            
        </Columns>
        <HeaderStyle HorizontalAlign ="Center" />
    </asp:GridView>
    <br />
    <a href="FormularioLibro.aspx" class="btn btn-primary">Agregar</a>

</asp:Content>



    

