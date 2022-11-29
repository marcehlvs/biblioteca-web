<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Biblioteca.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Biblioteca Alfonsina Storni</h1>
    <p>Es al separarse cuando se siente y comprende la fuerza con que se ama</p>

      <div class="row row-cols-1 row-cols-md-3 g-4">

    <%--         <%
         foreach (dominio.Libro libro in ListaLibro)
         {%>
             <div class="col">
            <div class="card">
                <img src="<%:libro.UrlTapaLibro %>" class="card-img-top" alt="imagen-libro"/> 
                <div class="card-body">
                    <h5 class="card-title"><%:libro.Titulo %></h5>
                    <h6 class="card-title"><%:libro.Autor %></h6>
                    <p class="card-text"><%:libro.Descripcion %></p>
                    <a href="DetalleLibro.aspx?id=<%:libro.IdLibros %>">Ver detalle</a> 
                </div>
            </div>
        </div>   
       <%  } %>  --%>

        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlTapaLibro")%>" class="card-img-top" 
                            alt="imagen-libro"/>
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Titulo") %></h5>
                            <h6 class="card-title"><%#Eval("Autor") %></h6>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a href="DetalleLibro.aspx?id=<%#Eval("IdLibros")%>">Ver detalle</a>
                            <asp:Button Text="Ejemplo" CssClass="btn btn-primary" runat="server"
                                ID="btnEjemplo" CommandArgument='<%#Eval("IdLibros") %>'
                                CommandName="LibroId" OnClick="btnEjemplo_Click" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

          
                    



                



    
