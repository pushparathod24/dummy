﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtn.Text = Session["Name"].ToString();
        txte.Text = Session["Email"].ToString();
        txta.Text = Session["Age"].ToString();
    }
}