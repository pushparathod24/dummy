using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "SUBMITTED";
        Session["Name"] = txtName.Text;
        Session["Email"] = txtEmail.Text;
        Session["Age"] = txtAge.Text;
        Session["Password"] = txtPassword.Text;
        Session["RePassword"] = txtRepassword.Text;
        Response.Redirect("Display.aspx");
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtAge.Text = " ";
        txtEmail.Text = " ";
        txtName.Text = " ";
        txtPassword.Text = " ";
        txtRepassword.Text = " ";
    }
}