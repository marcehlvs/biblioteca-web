using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace Biblioteca
{
    public partial class FormularioLibro : System.Web.UI.Page
    {   
        public bool ConfirmaEliminacion { get;set;}
        protected void Page_Load(object sender, EventArgs e)
        {
            txtIdLibros.Enabled = false;
            ConfirmaEliminacion = false;
            try
            {

                //Configuración inicial de la pantalla.
                if (!IsPostBack)
                {
                    CategoriaNegocio negocio = new CategoriaNegocio();
                    List<Categorias> lista = negocio.listar();

                    ddlCategoria.DataSource = lista;
                    ddlCategoria.DataValueField = "IdCategoria";
                    ddlCategoria.DataTextField = "Categoria";
                    ddlCategoria.DataBind();
                }

                // configuración si modificamos
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                if (id != "" && !IsPostBack)
                {
                    LibroNegocio negocio = new LibroNegocio();
                    List<Libro> lista = negocio.listar(id);
                    Libro seleccionado = lista[0];
                    Session.Add("libroSeleccionado", seleccionado);

                    //Guardo libro en la sesion.

                    //Cargo todos los campos con el libro modificado.
                    
                    txtIdLibros.Text = id;
                    txtCodigo.Text = seleccionado.Codigo;
                    ddlCategoria.SelectedValue = seleccionado.Categoria.IdCategoria.ToString();
                    txtTitulo.Text = seleccionado.Titulo;
                    txtAutor.Text = seleccionado.Autor;
                    txtDescripcion.Text = seleccionado.Descripcion;
                    txtFechaPublicacion.Text = seleccionado.FechaPublicacion.ToString("yyyy-MM-dd");
             

                    txtImagenUrl.Text = seleccionado.UrlTapaLibro;                     
                    txtImagenUrl_TextChanged(sender, e);

                    //configurar acciones

                    if (!seleccionado.Disponibilidad)
                        btnInactivar.Text = "Reactivar";

                }

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                Response.Redirect("Error.aspx");
                //Redirección a pantalla error.
            }


            
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Libro altaLibro = new Libro();
                LibroNegocio negocio = new LibroNegocio();
                
                altaLibro.Codigo = txtCodigo.Text;
                altaLibro.Categoria = new Categorias();
                altaLibro.Categoria.IdCategoria = int.Parse(ddlCategoria.SelectedValue);
                altaLibro.Titulo = txtTitulo.Text;
                altaLibro.Autor = txtAutor.Text;
                altaLibro.Descripcion = txtDescripcion.Text;
                altaLibro.FechaPublicacion = DateTime.Parse(txtFechaPublicacion.Text);
                altaLibro.UrlTapaLibro = txtImagenUrl.Text;

                if (Request.QueryString["id"] != null)
                {
                    altaLibro.IdLibros = int.Parse(txtIdLibros.Text);
                    negocio.modificarConSP(altaLibro);
                }
                else
                    negocio.agregarConSP(altaLibro);

                Response.Redirect("BibliotecaLista.aspx", false);

            }
            catch (Exception ex)
                
            {

                Session.Add("error", ex);
                Response.Redirect("Error.aspx");
                //Redirección a pantalla error.
            }

        }

        protected void txtImagenUrl_TextChanged(object sender, EventArgs e)
        {
            imagLibro.ImageUrl = txtImagenUrl.Text;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ConfirmaEliminacion = true;
        }

        protected void btnConfirmaEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                if (chkConfirmarEliminacion.Checked)
                {
                    LibroNegocio negocio = new LibroNegocio();
                    negocio.eliminar(int.Parse(txtIdLibros.Text));
                    Response.Redirect("BibliotecaLista.aspx");
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnInactivar_Click(object sender, EventArgs e)
        {
            try
            {
                LibroNegocio negocio = new LibroNegocio();
                Libro seleccionado = (Libro)Session["libroSeleccionado"];
                negocio.eliminarLogico(seleccionado.IdLibros, !seleccionado.Disponibilidad);
                Response.Redirect("BibliotecaLista.aspx");
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                Response.Redirect("Error.aspx");
            }
        }

        protected void filtro_TextChanged(object sender, EventArgs e)
        {

        }
    }
}



                    