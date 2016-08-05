using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class AddShop : System.Web.UI.Page
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
        //Label2.Text = Session["rid"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
        string areacode=null;
        string shopid=null;
        
        dm.connOpen(conn);
        
            string query = "select * from REP_SCHEDULE where RID='" + Session["rid"].ToString() + "'";
            areacode=dm.ReadRow(query, conn)["AREACODE"].ToString();
            /**/
            string shopid_query = "select shopid_seq.nextval from dual";
            shopid = dm.ReadRow(shopid_query, conn)[0].ToString();
            string insert_query_shop5 = "insert into shop_5 values('" + shopid + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            Label1.Text = insert_query_shop5;
            Session["recentshopid"] = shopid;
            string insert_query_rep3 = "insert into REP_3 values('" + Session["rid"].ToString() + "','" + areacode + "','" + shopid + "')";
            
            
            dm.InsertRow(insert_query_shop5, conn);
            dm.InsertRow(insert_query_rep3, conn);

            /*notification starts here*/
            string add_notify = "insert into notification(ncounter,rid,shopid) values(1,'" + Session["rid"].ToString() + "','" + shopid + "')";
            dm.InsertRow(add_notify, conn);
        

        dm.connClose(conn);
        
        Response.Redirect("~/ViewShopProfile.aspx");
    }
}