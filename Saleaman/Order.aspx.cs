using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;


public partial class Order : System.Web.UI.Page
{
    private DataTable dt;
   // private string Temporary=null;

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

        dt = new DataTable();
        dt.Columns.Add("PID", typeof(String));
        dt.Columns.Add("Product Name", typeof(String));
        dt.Columns.Add("Unitprice", typeof(String));
        dt.Columns.Add("Stock", typeof(String));
        dt.Columns.Add("Quantity", typeof(String));

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int row = GridView1.Rows.Count;
        int flag = 0;
        for (int i = 0; i < row; i++)
        {
            TextBox txt = (TextBox)GridView1.Rows[i].Cells[4].FindControl("TextBox1");
            String val = txt.Text;

            String stock= GridView1.Rows[i].Cells[3].Text;
         //   Label2.Text += stock;
            GridView1.Rows[i].Cells[5].BackColor = System.Drawing.Color.White;
            if (int.Parse(stock) - int.Parse(val) <= 10)
            {
                flag = 0;
                GridView1.Rows[i].Cells[5].Text = "minimun stock can be 10";
                GridView1.Rows[i].Cells[5].BackColor = System.Drawing.Color.Red;
            }
            if (!val.Equals("0") && !(int.Parse(stock) - int.Parse(val) <= 10))
            {
                ///save it to data base
                /////get the pid
                dt.Rows.Add(GridView1.Rows[i].Cells[0].Text, GridView1.Rows[i].Cells[1].Text, GridView1.Rows[i].Cells[2].Text, GridView1.Rows[i].Cells[3].Text,val);
                flag = 1;

            }
        }
       
        GridView2.DataSource = dt;
        GridView2.DataBind();
      //  Label2.Text = flag.ToString();
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
       // Label2.Text = "ase nai";
        dm.connOpen(conn);
        if (flag == 1)
        {
            string saleid_query = "select saleid_seq.nextval from dual";
            string saleid = dm.ReadRow(saleid_query, conn)[0].ToString();
            int row1 = GridView2.Rows.Count;
            for (int i = 0; i < row1; i++)
            {
                string pid = GridView2.Rows[i].Cells[0].Text;
                string name = GridView2.Rows[i].Cells[1].Text;
                string stock = GridView2.Rows[i].Cells[3].Text;
                string unitprice = GridView2.Rows[i].Cells[2].Text;
                string quantity = GridView2.Rows[i].Cells[4].Text;
                
                try
                {
                    
                    Label3.Text = Session["shopid"].ToString();
                    string insert_query = "insert into dummytable values ('"+Session["rid"].ToString()+"','"+Session["shopid"].ToString()+"','"+saleid+"','"+pid+"','"+name+"',"+stock+","+quantity+","+unitprice+",sysdate)";
                    Label3.Text = insert_query;
                    dm.InsertRow(insert_query, conn);
                    
                }
                catch (Exception ie)
                {
                    Label3.Text = ie.Message;
                }
            }
            dm.connClose(conn);
            Session["saleid"] = saleid;
            Response.Redirect("~/AfterOrder.aspx");
        }
        
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}