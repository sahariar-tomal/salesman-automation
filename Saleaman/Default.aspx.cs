using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.RemoveAll();
    }
    

    protected void Login_Click(object sender, EventArgs e)
    {


        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
        dm.connOpen(conn);
        /*login variables*/
        String username,password;

        username = TextBox1.Text;
        password = TextBox2.Text;



        try
        {
            string query = "select * from REP_1 where USERNAME='" + username + "'";
            string pass = dm.ReadRow(query, conn)["PASS"].ToString();
            string repid = dm.ReadRow(query, conn)["rid"].ToString();
            if (pass.Equals(password))
            {
                Session["rid"] = repid;
                Response.Redirect("~/AddShop.aspx?rid="+repid);

            }

            else {
                Label1.Text = "Invalid Username and Password";
            
            }

        }

        catch
        {
            Label1.Text = "Invalid Username and Password";

        }

        dm.connClose(conn);

    }
}
