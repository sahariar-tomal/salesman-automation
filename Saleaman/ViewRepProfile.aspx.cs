using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class ViewRepProfile : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
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

            DatabaseManagement dm = new DatabaseManagement();
            OracleConnection conn = dm.dbaseConn();
            dm.connOpen(conn);
            string query1 = "select * from REP_1 where rid='" + Session["rid"].ToString() + "'";
            string query2 = "select * from REPADDRESS where rid='" + Session["rid"].ToString() + "'";
            string query3 = "select * from bonusinfo where rid='" + Session["rid"].ToString() + "'";
            TextBox1.Text = Session["rid"].ToString(); ///rep id in session
            TextBox2.Text = dm.ReadRow(query1, conn)["username"].ToString();
            TextBox3.Text = dm.ReadRow(query1, conn)["name"].ToString();
            TextBox4.Text = dm.ReadRow(query1, conn)["dob"].ToString();
            TextBox5.Text = dm.ReadRow(query1, conn)["gender"].ToString();
            TextBox6.Text = dm.ReadRow(query1, conn)["nid"].ToString();
            TextBox7.Text = dm.ReadRow(query1, conn)["mobile"].ToString();
            TextBox8.Text = dm.ReadRow(query1, conn)["email"].ToString();

            /*address*/
            TextBox9.Text = dm.ReadRow(query2, conn)["houseno"].ToString();
            TextBox10.Text = dm.ReadRow(query2, conn)["roadno"].ToString();
            TextBox11.Text = dm.ReadRow(query2, conn)["village"].ToString();
            TextBox12.Text = dm.ReadRow(query2, conn)["thana"].ToString();
            TextBox13.Text = dm.ReadRow(query2, conn)["district"].ToString();
            TextBox14.Text = dm.ReadRow(query2, conn)["pcode"].ToString();

            /*bonusinfo*/

            TextBox15.Text = dm.ReadRow(query3, conn)["rank"].ToString();
            TextBox16.Text = dm.ReadRow(query3, conn)["salary"].ToString();
            TextBox17.Text = dm.ReadRow(query3, conn)["totalorder"].ToString();
            TextBox18.Text = dm.ReadRow(query3, conn)["totaltarget"].ToString();
            TextBox19.Text = dm.ReadRow(query3, conn)["totalbonus"].ToString();
            /*sqlsource with details*/

            dm.connClose(conn);
            //   Label1.Text = flag.ToString();
        }
        
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        TextBox2.ReadOnly = false;
        TextBox2.BackColor = System.Drawing.Color.Yellow;

        //TextBox4.ReadOnly = false;
        //TextBox4.BackColor = System.Drawing.Color.Yellow;

        TextBox7.ReadOnly = false;
        TextBox7.BackColor = System.Drawing.Color.Yellow;

        TextBox8.ReadOnly = false;
        TextBox8.BackColor = System.Drawing.Color.Yellow;

        TextBox9.ReadOnly = false;
        TextBox9.BackColor = System.Drawing.Color.Yellow;

        TextBox10.ReadOnly = false;
        TextBox10.BackColor = System.Drawing.Color.Yellow;

        TextBox11.ReadOnly = false;
        TextBox11.BackColor = System.Drawing.Color.Yellow;

        TextBox12.ReadOnly = false;
        TextBox12.BackColor = System.Drawing.Color.Yellow;

        TextBox13.ReadOnly = false;
        TextBox13.BackColor = System.Drawing.Color.Yellow;

        TextBox14.ReadOnly = false;
        TextBox14.BackColor = System.Drawing.Color.Yellow;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
        dm.connOpen(conn);
        
        string query1 = "update REP_1 set username='" + TextBox2.Text + "', mobile='" + TextBox7.Text + "', email='" + TextBox8.Text + "' where rid='" + Session["rid"].ToString() + "'";
        string query2 = "update REPADDRESS set houseno='" + TextBox9.Text + "', roadno='" + TextBox10.Text + "', village='" + TextBox11.Text + "', thana='" + TextBox12.Text + "', district='" + TextBox13.Text + "', pcode='" + TextBox14.Text + "' where rid='" + Session["rid"].ToString() + "'";
        
        //Label2.Text = query2;
        dm.InsertRow(query1, conn);
        dm.InsertRow(query2, conn);

        /*notification starts here*/
        string update_notify = "insert into notification(ncounter,rid) values(5,'" + Session["rid"].ToString() + "')";
        dm.InsertRow(update_notify,conn);
        dm.connClose(conn);
    }
}