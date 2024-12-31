using SampleApp.DAL;
using SampleApp.Models;
using System;
using System.Web.UI;

namespace SampleApp
{
    public partial class Register : System.Web.UI.Page
    {
        private RegistrationModule registrationModuleObj = new RegistrationModule();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlStates.DataSource = registrationModuleObj.GetStates();
                ddlStates.DataTextField = "Name";
                ddlStates.DataValueField = "Id";
                ddlStates.DataBind();
            }
        }
        protected void btnRegister_Click(object sende, EventArgs e)
        {
            
            DateTime dateOfBirth;
            if (DateTime.TryParseExact(txtDOB.Text.Trim(), "MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out dateOfBirth))
            {

                RegistrationModel model = new RegistrationModel
                {
                    FullName = txtFullName.Text.Trim(),
                    Email = txtEmail.Text.Trim(),
                    Phone = txtPhone.Text.Trim(),
                    StateId = Convert.ToInt32(ddlStates.SelectedValue),
                    DOB = dateOfBirth,
                    Gender = rdbMale.Checked ? "M" : "F"
                };

                lblMessage.Text = registrationModuleObj.Register(model);
            }
            else
            {
                lblMessage.Text = "Invalid DOB";
            }
            
            string script = "setTimeout(function() { $('#myModal').modal('show'); }, 500);";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "showModal", script, true);
        }
    }
}