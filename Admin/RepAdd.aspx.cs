using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class RepAdd : System.Web.UI.Page
{
    string name = null;
    string dob = null;
    string gender = null;
    string nid = null;
    string houseno = null;
    string roadno = null;
    string vilage = null;
    string postalcode = null;
    string thana = null;
    string district = null;
    string mobile= null;
    string email = null;
    string username = null;
    string password = null;
    string zone = null;
    string area= null;
    string rid = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox13.Text = "1234";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        name = TextBox1.Text;
        dob = "12-jan-60";//text box theke input hobe
        gender = DropDownList2.SelectedValue.ToString();
        nid = TextBox3.Text;
        houseno = TextBox4.Text;
        roadno = TextBox5.Text;
        vilage = TextBox6.Text;
        postalcode = TextBox7.Text;
        thana = TextBox8.Text;
        district = TextBox9.Text;
        mobile = TextBox10.Text;
        email = TextBox11.Text;
        username = TextBox12.Text;
        password = TextBox13.Text;//////////////
        zone = "rajshai";//////////////////
        area = "pabna";

        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection connection = dm.dbaseConn();
        dm.connOpen(connection);

        string ridquery = "select rid_seq.nextval from dual ";
        string rid = dm.ReadRow(ridquery, connection)[0].ToString();
        string query1 = "insert into REP_1 values('"+rid+"','"+username+"','"+password + "','" + name + "','" + dob + "','" + gender + "','" + nid + "','" + mobile + "','" + email + "')";
        string query2 = "insert into REPADDRESS values('"+rid+"','"+houseno+"','"+roadno+"','"+vilage+"','"+thana+"','"+district+"','"+postalcode+"')";
        string query3 = "insert into bonusinfo values('"+rid+"',"+0+","+10000+","+0+","+1000000+","+0+")";
        string query4 = "insert into rep_schedule values('" + rid + "','5000')";
        //Label1.Text = query1;
        Label2.Text = query4;
        dm.InsertRow(query1, connection);
        dm.InsertRow(query2, connection);
        dm.InsertRow(query3, connection);
        dm.InsertRow(query4, connection);
        connection.Close();
        Response.Redirect("~/AfterRepCreation.aspx?"+rid);
    }
}