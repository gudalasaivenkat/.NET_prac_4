
using System;
using System.Drawing;
using System.Web.UI;

namespace EventRegistrationPortal
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Check validation controls on the server
            Page.Validate();

            if (Page.IsValid)
            {
                lblMessage.ForeColor = Color.Green;

                lblMessage.Text =
                    "<br/><br/><b>Registration Successful!</b>" +
                    "<br/>Name: " + Server.HtmlEncode(txtName.Text) +
                    "<br/>Email: " + Server.HtmlEncode(txtEmail.Text) +
                    "<br/>Phone: " + Server.HtmlEncode(txtPhone.Text) +
                    "<br/>Age: " + Server.HtmlEncode(txtAge.Text) +
                    "<br/>Event: " +
                    Server.HtmlEncode(ddlEvent.SelectedValue);
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text =
                    "Please correct the errors and try again.";
            }
        }
    }
}
