<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormularioLibro.aspx.cs" Inherits="Biblioteca.FormularioLibro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtIdLibros" class="form-label">IdLibros: </label>
                <asp:TextBox ID="txtIdLibros" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtCodigo" class="form-label">Código: </label>
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="ddlCategoria" class="form-label">Categoria: </label>
                <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtTitulo" class="form-label">Título: </label>
                <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtAutor" class="form-label">Autor/a: </label>
                <asp:TextBox ID="txtAutor" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="mb-3">
                <asp:Button runat="server" ID="btnAceptar" Text="Aceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" />
                <a href="BibliotecaLista.aspx" >Cancelar</a>
                <asp:Button runat="server" ID="btnInactivar" Text="Inactivar" CssClass="btn btn-warning" OnClick="btnInactivar_Click" />
            </div>
        </div>
        <div class="col-6">
              <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción: </label>
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
              <div class="mb-3">
                <label for="txtFechaPublicacion" class="form-label">Fecha Publicación: </label>
                <asp:TextBox ID="txtFechaPublicacion" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtImagenUrl" class="form-label">Url Imagen</label>
                        <asp:TextBox ID="txtImagenUrl" runat="server" CssClass="form-control"
                            autoPostBack="true" OnTextChanged="txtImagenUrl_TextChanged"></asp:TextBox>
                    </div>
                    <asp:Image ImageUrl="https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png" 
                        runat="server" ID="imagLibro" Width="40%" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>        
    <div class="row">
        <div class="col-6">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                <div class="mb-3">
                    <asp:Button ID="btnEliminar" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="btn btn-danger" runat="server" />
                </div>
                <%if (ConfirmaEliminacion)
                {%>
                    <div class="mb-3">
                        <asp:CheckBox Text="Confirmar Eliminación" ID="chkConfirmarEliminacion" runat="server"></asp:CheckBox>
                        <asp:Button ID="btnConfirmaEliminar" OnClick="btnConfirmaEliminar_Click" Text="Eliminar" CssClass="btn btn-outline-danger" runat="server" />
                    </div>
                <%}%>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>




