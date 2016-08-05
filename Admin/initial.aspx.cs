using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class initial : System.Web.UI.Page
{
    string username;
    string password;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        username = Login1.UserName;
        password = Login1.Password;
        // Label1.Text = username+password;
        DatabaseManagement dm = new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
        dm.connOpen(conn);
        try
        {
            string query = "select password from ADMIN where username='" + username +"'";
            string pass=dm.ReadRow(query, conn)["password"].ToString();
            if (pass.Equals(password))
            {
                Session["admin"] = username;
                Response.Redirect("~/introduction.aspx");
                
            }
            //else
            //    Login = "Your login attempt was not successful. Please try again.";
       
        }
        catch (Exception ie)
        {
            Login1.FailureText = "Your login attempt was not successful. Please try again.";
            Label1.Text = ie.Message;
            
        }
        dm.connClose(conn);
    }
}