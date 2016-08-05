using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BeforeOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string dummy = "";
        try
        {
            if (Session["rid"].ToString().Equals(dummy))
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        catch
        {
            Response.Redirect("~/Default.aspx");
        }

        SqlDataSource1.SelectCommand = "select * from shop_5 where shopid in ( select shopid from rep_3 where rid='" + Session["rid"].ToString() + "') order by shopid";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        string shopid = TextBox1.Text;
        string dummy = "";
        if (shopid.Equals(dummy))
        {
            Label1.Text = "Error";
            Label1.BackColor = System.Drawing.Color.Red;
        }
        else
        {
            int row = GridView1.Rows.Count;
            for (int i = 0; i < row; i++)
            {
                if (GridView1.Rows[i].Cells[0].Text.Equals(shopid))
                {
                    flag = 1;
                    Session["shopid"] = shopid;
                    break;


                }
            }
            if (flag == 1)
            {

                Response.Redirect("~/Order.aspx");
            }
            else
            {
                Label1.Text = "This shop is not valid.";
            }

        }
        
    }
}