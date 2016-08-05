using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class RepDetailsPage : System.Web.UI.Page
{
    string rid;
    DatabaseManagement dm;
    string name, dob, gender, nid, mobile, email;
    string houseno, roadno, village, thana, district, pcode;
    string username, pass, rank, salary, zone, areacode,areaname,totalorder,totaltarget,totalbonus;
    protected void Page_Load(object sender, EventArgs e)
    {
        rid = Request.QueryString[0].ToString();
        Label1.Text = rid;
       dm= new DatabaseManagement();
        OracleConnection conn = dm.dbaseConn();
        dm.connOpen(conn);
        string query1 = "select * from REP_1 where rid= "+rid;
        name = dm.ReadRow(query1, conn)["name"].ToString();
        dob = dm.ReadRow(query1, conn)["dob"].ToString();
        gender = dm.ReadRow(query1, conn)["gender"].ToString();
        nid = dm.ReadRow(query1, conn)["nid"].ToString();
        mobile = dm.ReadRow(query1, conn)["mobile"].ToString();
        email = dm.ReadRow(query1, conn)["email"].ToString();
        username = dm.ReadRow(query1, conn)["rid"].ToString();////user name should be included in REP_1
       // pass = dm.ReadRow(query1, conn)["pass"].ToString();
        string query2 = "select * from REPADDRESS where rid= " + rid;
        houseno = dm.ReadRow(query2, conn)["houseno"].ToString();
        roadno = dm.ReadRow(query2, conn)["roadno"].ToString();
        village = dm.ReadRow(query2, conn)["village"].ToString();
        thana = dm.ReadRow(query2, conn)["thana"].ToString();
        district = dm.ReadRow(query2, conn)["district"].ToString();
        pcode = dm.ReadRow(query2, conn)["pcode"].ToString();
        string query3 = "select * from bonusinfo where rid= " + rid;
        rank = dm.ReadRow(query3, conn)["rank"].ToString();
        salary = dm.ReadRow(query3, conn)["salary"].ToString();
        totalorder = dm.ReadRow(query3, conn)["totalorder"].ToString();
        totaltarget = dm.ReadRow(query3, conn)["totaltarget"].ToString();
        totalbonus = dm.ReadRow(query3, conn)["totalbonus"].ToString();
        string query4 = "select * from rep_schedule where rid=" + rid;
        areacode = dm.ReadRow(query4, conn)["areacode"].ToString();
        string anotherquery = "select * from schedule_8 where areacode=" + areacode;
        areacode = dm.ReadRow(anotherquery, conn)["areaname"].ToString();
        zone = dm.ReadRow(anotherquery, conn)["zone"].ToString();
        
        
        
        dm.connClose(conn);
        TextBox1.Text = name;
        TextBox3.Text = dob;
        TextBox4.Text = gender;
        TextBox5.Text = nid;
        ////
        
        TextBox6.Text=houseno;
        TextBox7.Text=roadno;
        TextBox8.Text=village;
        TextBox9.Text=pcode;
        TextBox10.Text=thana;
        TextBox11.Text=district;
        TextBox12.Text = mobile;
        TextBox13.Text = email;

        TextBox14.Text = username;
        TextBox15.Text = "*********";
        TextBox16.Text = rank;
        TextBox17.Text = salary;
        TextBox18.Text = zone;////////
        TextBox19.Text = areaname;
        TextBox20.Text = totaltarget;
        TextBox21.Text = totalorder;//////////////////////////"total target fill nai";
        TextBox22.Text = totalbonus;

        
       
    }
}