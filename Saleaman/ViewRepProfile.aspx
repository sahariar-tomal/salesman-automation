<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewRepProfile.aspx.cs" Inherits="ViewRepProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 147px;
        }
        .style2
        {
            width: 147px;
            height: 24px;
        }
        .style3
        {
            height: 24px;
        }
        .style4
        {
            width: 147px;
            height: 30px;
        }
        .style5
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    
    <br />
    <br />
    <br />
    <br />
    <br />
    
    
    <table style="width:100%;">
        <tr>
            <td class="style2">
                <strong>Representative ID</strong></td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style1">
               <strong> User Name</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Name</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <strong>Date of Birth</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Gender</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> National Id</strong></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Mobile No.</strong></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Email</strong></td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> House no.</strong></td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Road no.</strong></td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Village</strong></td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <strong>Thana</strong></td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> District</strong></td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Prostal code</strong></td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong>Rank</strong> </td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong>Salary</strong> </td>
            <td>
                <asp:TextBox ID="TextBox16" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Total Order</strong></td>
            <td>
                <asp:TextBox ID="TextBox17" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
               <strong> Total Target</strong></td>
            <td>
                <asp:TextBox ID="TextBox18" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
              <strong>  Total Bonus</strong></td>
            <td>
                <asp:TextBox ID="TextBox19" runat="server" Height="23px" Width="331px" 
                    ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                    Text="Update" Width="145px" />
            </td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button2" runat="server" Height="33px" 
                    onclick="Button2_Click" Text="Submit" Width="145px" />
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style2">
                <h3>
                    <b>Sale Information</b></h3>
            </td>
            <td class="style3">
                </td>
            <td class="style3">
                </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="RID" HeaderText="RID" SortExpression="RID" />
            <asp:BoundField DataField="SALEID" HeaderText="SALEID" 
                SortExpression="SALEID" />
            <asp:BoundField DataField="SHOPID" HeaderText="SHOPID" 
                SortExpression="SHOPID" />
            <asp:BoundField DataField="DATEOFSALE" HeaderText="DATEOFSALE" 
                SortExpression="DATEOFSALE" />
            <asp:BoundField DataField="STATUS" HeaderText="STATUS" 
                SortExpression="STATUS" />
            <asp:HyperLinkField DataNavigateUrlFields="SALEID" 
                DataNavigateUrlFormatString="SaleDetailsPage.aspx?{0}" Text="Details" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        
        
        SelectCommand="SELECT * FROM &quot;REP_4&quot; WHERE (&quot;RID&quot; = :RID) ORDER BY &quot;DATEOFSALE&quot; DESC">
        <SelectParameters>
            <asp:SessionParameter Name="RID" SessionField="rid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

