using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class ComfirmOrder : System.Web.UI.Page
{
    double total_cost;
    protected void Page_Load(object sender, EventArgs e)
    {
        total_cost = 0;
        Label1.Text = Request.QueryString[0];
        
        int row = GridView1.Rows.Count;
        for (int i = 0; i < row; i++)
        {
            Label cost=(Label)GridView1.Rows[i].Cells[4].FindControl("Label2");
            double per_row_cost = Double.Parse(GridView1.Rows[i].Cells[2].Text) * Double.Parse(GridView1.Rows[i].Cells[3].Text);
            total_cost = total_cost + per_row_cost;
            cost.Text = per_row_cost.ToString();
        }
        Label3.Text = total_cost.ToString();

        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();

        dm.connOpen(conn);

        string date_of_delivery_query = "select dateofdelivery from schedule_11 where saleid='" + Label1.Text + "'";
        Label4.Text=dm.ReadRow(date_of_delivery_query,conn)["dateofdelivery"].ToString();

        dm.connClose(conn);

    }
}