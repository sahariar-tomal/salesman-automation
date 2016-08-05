using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class AfterOrder : System.Web.UI.Page
{
    string datofdelivery = null;
    double cost;
    protected void Page_Load(object sender, EventArgs e)
    {
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
        
        dm.connOpen(conn);
        string cost_query = "select sum(quantity*unitprice) from dummytable where saleid='" + Session["saleid"].ToString() + "'";
     
        string date_query = "select dateofdelivery from schedule_8 where areacode=(select areacode from rep_3 where shopid='"+Session["shopid"].ToString()+"')";

        cost = double.Parse(dm.ReadRow(cost_query, conn)[0].ToString());
       
        datofdelivery = dm.ReadRow(date_query, conn)[0].ToString();
       

    


        dm.connClose(conn);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int row = GridView1.Rows.Count;
        for (int i = 0; i < row; i++)
        {
            TextBox txt = (TextBox)GridView1.Rows[i].Cells[7].FindControl("TextBox1");
            txt.ReadOnly = false;
            txt.BackColor = System.Drawing.Color.Yellow;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int row = GridView1.Rows.Count;
        for (int i = 0; i < row; i++)
        {
            TextBox txt = (TextBox)GridView1.Rows[i].Cells[7].FindControl("TextBox1");
            txt.ReadOnly = true;
            txt.BackColor = System.Drawing.Color.Yellow;
        }
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();

        dm.connOpen(conn);
        
        int flag=1;
        row = GridView1.Rows.Count;
        for (int i = 0; i < row; i++)
        {
            TextBox txt = (TextBox)GridView1.Rows[i].Cells[7].FindControl("TextBox1");
            int quantity = int.Parse(txt.Text);
            /*quantity*/

            int stock = int.Parse(GridView1.Rows[i].Cells[6].Text);

            if (quantity == 0)
            {
                string deletedpid = GridView1.Rows[i].Cells[2].Text;
                string delete_query = "delete from dummytable where pid='" + deletedpid + "'";
                //dm.InsertRow(delete_query, conn);
                SqlDataSource1.DeleteCommand = delete_query;
                
                GridView1.DeleteRow(i);
                Label2.Text = "0";
                flag=0;
            }
            else if ((stock - quantity) <= 10)
            {
                GridView1.Rows[i].Cells[8].Text = "minimun stock can be 10";
                GridView1.Rows[i].Cells[8].BackColor = System.Drawing.Color.Red;
                Label1.Text = (stock - quantity).ToString();
                flag=0;
            }
        }
        
        if(flag==1)
        {
            int new_row=GridView1.Rows.Count;
            for(int i=0;i<new_row;i++)
            {
                string pid =GridView1.Rows[i].Cells[2].Text;
                string name =GridView1.Rows[i].Cells[3].Text;
                TextBox txt = (TextBox)GridView1.Rows[i].Cells[7].FindControl("TextBox1");
                int quantity = int.Parse(txt.Text);
                string stock =GridView1.Rows[i].Cells[6].Text;
                string unitprice =GridView1.Rows[i].Cells[4].Text;
                string date =GridView1.Rows[i].Cells[5].Text;

                string order_product_query = "insert into order_product values('" + pid + "','" + name + "'," + int.Parse(unitprice) + "," + int.Parse(stock) + "," + quantity + ")";
                dm.InsertRow(order_product_query,conn);
                string shop_10_query = "insert into shop_10 values('" + Session["saleid"].ToString() + "','" + name + "'," + quantity + "," + unitprice + ")";
                dm.InsertRow(shop_10_query, conn);
                /*stock update*/
                int update_stock = (int.Parse(stock) - quantity);
                string update_stock_product_6_query = "update product_6 set stock=" + update_stock + "where pid='" + pid + "'";
                Label1.Text = update_stock_product_6_query;
                dm.InsertRow(update_stock_product_6_query, conn);

                /*insert into database*/


            }

            string dateofsale = GridView1.Rows[0].Cells[5].Text;
            string rep_4_query = "insert into rep_4 values('"+Session["rid"].ToString()+"','"+Session["saleid"].ToString()+"','"+Session["shopid"].ToString()+"',sysdate,'ok')";
            //Label1.Text = rep_4_query;
            dm.InsertRow(rep_4_query, conn);
            string sale_query = "insert into sale values('"+Session["saleid"].ToString()+"',to_char(sysdate,'DD-MON-YYYY'))";
            //Label2.Text = sale;
            dm.InsertRow(sale_query, conn);
            string schedule_11_query = "insert into schedule_11 values('" + Session["saleid"].ToString() + "',sysdate,'" + datofdelivery + "')";
          //  Label2.Text += " " + schedule_11_query;
            dm.InsertRow(schedule_11_query, conn);
            string shop_9_query = "insert into shop_9 values('" + Session["saleid"].ToString() + "','" + Session["shopid"].ToString() + "'," + cost + ",0)";
            //Label3.Text = shop_9_query;
            dm.InsertRow(shop_9_query, conn);
            string bonusinfo_query = "update bonusinfo set totalorder=(totalorder+" + cost + ") where rid='" + Session["rid"].ToString() + "'";
            //Label1.Text = bonusinfo_query;
            dm.InsertRow(bonusinfo_query, conn);
            /*insert into database*/

            /*bonus calculation*/
            string get_target = "select * from bonusinfo where rid='" + Session["rid"].ToString() + "'";
            string target = dm.ReadRow(get_target,conn)["totaltarget"].ToString();
            string bonus_str = dm.ReadRow(get_target, conn)["totalbonus"].ToString();
            string totalorder=dm.ReadRow(get_target,conn)["totalorder"].ToString();

            double final_total_order=double.Parse(totalorder)+cost;
            Label1.Text = final_total_order.ToString();
            double total_target=double.Parse(target);
            double bonus = double.Parse(bonus_str);

            if (final_total_order >= total_target)
            {
                if (final_total_order == total_target)
                {
                    bonus = bonus + 500;
                }
                else
                {
                    bonus = bonus + ((final_total_order - total_target) * .05);
                }

                string update_bonusinfo = "update bonusinfo set totaltarget=" + (total_target + 50000) + ",totalbonus=" + bonus+" where rid='"+Session["rid"].ToString()+"'";
                Label1.Text = update_bonusinfo;
                dm.InsertRow(update_bonusinfo,conn);
            }

            string delete_saleid_query = "delete from dummytable where saleid='" + Session["saleid"].ToString() + "'";
            dm.InsertRow(delete_saleid_query, conn);

            /*notification starts here*/
            string confirm_notify = "insert into notification(ncounter,rid,shopid,saleid) values(2,'" + Session["rid"].ToString() + "','" + Session["shopid"].ToString() + "','" + Session["saleid"].ToString() + "')";
            dm.InsertRow(confirm_notify, conn);



            dm.connClose(conn);

                
            Response.Redirect("~/ComfirmOrder.aspx?"+Session["saleid"].ToString());
            //}

        }
        
        dm.connClose(conn);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();

        dm.connOpen(conn);
        string delete_saleid_query = "delete from dummytable where saleid='" + Session["saleid"].ToString() + "'";
        string status_query = "insert into REP_4 values('" + Session["rid"].ToString() + "','" + Session["saleid"].ToString() + "','" + Session["shopid"].ToString() + "',sysdate,'Failed')";
        dm.InsertRow(delete_saleid_query, conn);
        dm.InsertRow(status_query, conn);
        
        /*notification starts here*/
        string cancel_notify = "insert into notification(ncounter,rid,shopid,saleid) values(3,'" + Session["rid"].ToString() + "','" + Session["shopid"].ToString() + "','" + Session["saleid"].ToString() + "')";
        dm.InsertRow(cancel_notify,conn);


        dm.connClose(conn);
        Response.Redirect("~/CancelOrder.aspx?" + Session["saleid"].ToString());
        //Label1.Text = delete_saleid_query;
        //Label2.Text = status_query;
    }
}