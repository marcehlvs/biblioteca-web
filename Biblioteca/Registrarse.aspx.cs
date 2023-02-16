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
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trainee user = new Trainee();
            user.Email = txtEmail.Text;
            user.Pass = txtPassword.Text;
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                Trainee user = new Trainee();
                TraineeNegocio traineeNegocio = new TraineeNegocio();
                EmailService emailService = new EmailService(); 
                user.Email = txtEmail.Text;
                user.Pass = txtPassword.Text;
                user.Id = traineeNegocio.insertNuevo(user);
                Session.Add("trainee", user);

                emailService.armarCorreo(user.Email, "Bienvenido usuario", "Hola te damos la bienvenida a\n" +
                    " Biblioteca Alfonsina Storni");
                emailService.enviarEmail();
                Response.Redirect("Default.aspx", false);
                
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }
    }
}