using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class CancelOrder : System.Web.UI.Page
{
    string saleid;
    protected void Page_Load(object sender, EventArgs e)
    {
        saleid = Request.QueryString[0].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
        dm.connOpen(conn);
        string query = "insert into failed_status values('" + saleid + "','" + TextBox2.Text + "')";
        dm.InsertRow(query, conn);


        dm.connClose(conn);
    }
}