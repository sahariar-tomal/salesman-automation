using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class AddNewProduct : System.Web.UI.Page
{
    string name = null;
    double unitprice = 0;
    int stock = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        name = TextBox1.Text;
        unitprice = double.Parse(TextBox2.Text);
        stock = int.Parse(TextBox3.Text);

        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection connection = dm.dbaseConn();
        dm.connOpen(connection);

        string pidquery = "select pid_seq.nextval from dual ";
        string pid = dm.ReadRow(pidquery, connection)[0].ToString();


        string query="insert into product_6 values('"+pid+"','"+name+"',"+unitprice+","+stock+")";
      //  Label1.Text = query;
        dm.InsertRow(query, connection);
        connection.Close();
        Response.Redirect("~/ProductList.aspx");
    }
}