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
            LibroNegocio negocio = new LibroNegocio();
            dgvListaLibros.DataSource = negocio.listarConSP();
            dgvListaLibros.DataBind();
        }

        protected void dgvListaLibros_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvListaLibros.SelectedDataKey.Value.ToString();
            Response.Redirect("FormularioLibro.aspx?IdLibros=" + id);
        }

        protected void dgvListaLibros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvListaLibros.PageIndex=e.NewPageIndex;
            dgvListaLibros.DataBind();
        }
    }
}