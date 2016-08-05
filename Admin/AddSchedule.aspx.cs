using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class AddSchedule : System.Web.UI.Page
{
    string zone = null;
    string areaname = null;
    string dateofdelivary = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //zone = "Dhaka";////////////
        areaname = TextBox1.Text;
        dateofdelivary = "12-Jun-2012";////////////
        zone = DropDownList2.SelectedValue;
       // dateofdelivary = DropDownList2.SelectedValue;*/


        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection connection = dm.dbaseConn();
        dm.connOpen(connection);

        string areaquery = "select areacode_seq.nextval from dual ";
        string areacode = dm.ReadRow(areaquery, connection)[0].ToString();
        string query="insert into schedule_8 values('"+areacode+"','"+zone+"','"+areaname+"','"+dateofdelivary+"')";
        Label1.Text = query;
        dm.InsertRow(query, connection);
        connection.Close();
        Response.Redirect("~/ScheduleList.aspx");

    }
}