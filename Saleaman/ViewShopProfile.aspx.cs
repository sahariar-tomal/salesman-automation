using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewShopProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text=Session["recentshopid"].ToString();

        SqlDataSource2.SelectCommand = "select * from shop_5 where shopid in ( select shopid from rep_3 where rid='"+Session["rid"].ToString()+"') order by shopid";
        
    }
}