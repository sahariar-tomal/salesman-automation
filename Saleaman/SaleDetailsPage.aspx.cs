using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SaleDetailsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label1.Text = Request.QueryString[0];
        Label1.Visible = false;
      //  Label1.Text = "1025";
    }
}