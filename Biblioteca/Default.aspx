<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Biblioteca.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container1"> 
        <p><em>"Es al separarse cuando se siente y se comprende la fuerza con que se ama."</em>
            <br />
            <a class="enlace" href="https://es.wikipedia.org/wiki/Fi%C3%B3dor_Dostoyevski">Fiódor Dostoievski</a>
        </p>
    </div>

   
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
                    <div class="card" style="background-image: linear-gradient(45deg, #F2F2F2, #1C1C1C, #3F51B5);" >
                        <img src="<%#Eval("UrlTapaLibro")%>" class="card-img-top mx-auto d-block" 
                            alt="imagen-libro" style="width: 70%; height: 70%; margin-top:20px;" "object-fit cover;"/>
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Titulo") %></h5>
                            <h6 class="card-title"><%#Eval("Autor") %></h6>
                            <p class="card-text" ><%#Eval("Descripcion") %></p>
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

          
                    



                



    
