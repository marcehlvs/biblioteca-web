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
    public partial class BibliotecaLista : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Seguridad.esAdmin(Session["trainee"]))
            {
                Session.Add("error", "Se requiere permisos de admin para acceder a esta pantalla.");
                Response.Redirect("Error.aspx");
            }


                LibroNegocio negocio = new LibroNegocio();
                Session.Add("listaBiblioteca", negocio.listarConSP());
                dgvListaLibros.DataSource = negocio.listarConSP();
                dgvListaLibros.DataBind();
                dgvListaLibros.HeaderStyle.HorizontalAlign = HorizontalAlign.Center;


        }

        protected void dgvListaLibros_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvListaLibros.SelectedDataKey.Value.ToString();
            Response.Redirect("FormularioLibro.aspx?id=" + id);
        }

        protected void dgvListaLibros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvListaLibros.PageIndex=e.NewPageIndex;
            dgvListaLibros.DataBind();
        }

        protected void filtro_TextChanged(object sender, EventArgs e)
        {
            List<Libro> lista = (List<Libro>)Session["listaBiblioteca"];
            List<Libro> listaFiltrada = lista.FindAll(x => x.Titulo.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            dgvListaLibros.DataSource = listaFiltrada;
            dgvListaLibros.DataBind();
        }
    
    }
}