using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class Payment : System.Web.UI.Page
{
   static int flag = 0;
   static int show = 0;
    string dummy = "";
    protected void Page_Load(object sender, EventArgs e)
    {
           
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
        SqlDataSource1.SelectCommand = "select * from shop_9 where shopid in(select shopid from rep_3 where rid='" + Session["rid"].ToString() + "') and payment!=cost";
        GridView1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string match_query = "select * from shop_9 where shopid='" + TextBox1.Text + "' and saleid='" + TextBox2.Text + "'";
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
        dm.connOpen(conn);
        try
        {
            string matched = dm.ReadRow(match_query, conn)["saleid"].ToString();
            show = 1;
        }
        catch(Exception ex)
        {
            show = 0;
           // Label1.Text = "Please enter the correct shopid and saleid";
            Label1.Text = match_query;
        }
        if (show == 1)
        {
            SqlDataSource1.SelectCommand = "select * from shop_9 where shopid='" + TextBox1.Text + "' and saleid='" + TextBox2.Text + "'";
            flag = 1;
            Label1.Text = " "+flag.ToString();
            Label2.Text = " ";
        }
        
        dm.connClose(conn);
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (flag==1 && show==1)
        {
            string new_payment = TextBox3.Text;
            DatabaseManagement dm = new DatabaseManagement();
            OracleConnection conn = dm.dbaseConn();
            dm.connOpen(conn);
            string cost_query = "select * from shop_9 where shopid='" + TextBox1.Text + "' and saleid='" + TextBox2.Text + "'";
            string cost = dm.ReadRow(cost_query, conn)["cost"].ToString();

           
            if (new_payment.Equals(cost))
            {
                SqlDataSource1.UpdateCommand = "update shop_9 set payment=" + TextBox3.Text + "where shopid='" + TextBox1.Text + "' and saleid='" + TextBox2.Text + "'";
                Label2.Text = " " + flag.ToString();
                SqlDataSource1.Update();

                /*notification starts here*/
                string payment_notify = "insert into notification values(4,'" + Session["rid"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "'," + int.Parse(new_payment) + ")";
                Label2.Text = payment_notify;
                dm.InsertRow(payment_notify,conn);
            }
            else
            {
                Label2.Text = "you have to pay full amount";
            }
            dm.connClose(conn);
            /*redirect*/ /*confirm payment page*/

            Response.Redirect("~/Confirmpayment.aspx?shopid="+TextBox1.Text+"&paidamount="+new_payment);
           
        }
        else
        {
            Label2.Text = "First enter shopid and saleid"+flag.ToString()+show.ToString();
        }
    }
}