<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" Debug="true" AutoEventWireup="true" CodeFile="RepAdd.aspx.cs" Inherits="RepAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style2
    {
    }
    .style3
    {
        width: 200px;
    }
    .style4
    {
        width: 310px;
    }
    .style5
    {
        width: 200px;
        height: 31px;
    }
    .style6
    {
        height: 31px;
    }
    .style7
    {
        width: 200px;
        height: 29px;
    }
    .style8
    {
        height: 29px;
    }
    .style9
    {
        width: 200px;
        height: 25px;
    }
    .style10
    {
        height: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style9">
                    Basic Information</td>
                <td class="style10">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    full name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox1" Display="Dynamic" 
                        ErrorMessage="Enter name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Date of Birth:</td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="97px">
                        <asp:ListItem Value="0">Select a Date</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" BackColor="Red" 
                        ControlToValidate="DropDownList1" Display="Dynamic" 
                        ErrorMessage="Select a Date" MaximumValue="111111" MinimumValue="1" 
                        SetFocusOnError="True"></asp:RangeValidator>
                </td>
                </tr>
            <tr>
                <td class="style3">
                    Gender:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="0">Select a Gender</asp:ListItem>
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="1">Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" BackColor="Red" 
                        ControlToValidate="DropDownList2" Display="Dynamic" 
                        ErrorMessage="Select a Gender" MaximumValue="111111" MinimumValue="1" 
                        SetFocusOnError="True"></asp:RangeValidator>
                </td>
                </tr>
            <tr>
                <td class="style3">
                    National Id:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox3" Display="Dynamic" 
                        ErrorMessage="Enter ID" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
<p>
        <table style="width: 100%;">
            <tr>
                <td class="style5">
                    Contact Information</td>
                <td class="style6">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    House no.</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox4" Display="Dynamic" 
                        ErrorMessage="Enter House No" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Road no.</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox5" Display="Dynamic" 
                        ErrorMessage="Enter Road No." SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Village
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox6" Display="Dynamic" 
                        ErrorMessage="Enter Village" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Postal code.</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox7" Display="Dynamic" 
                        ErrorMessage="Enter Postal Code" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Thana</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox8" Display="Dynamic" 
                        ErrorMessage="Enter Thana" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    District</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox9" Display="Dynamic" 
                        ErrorMessage="Enter District" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mobile</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox10" Display="Dynamic" 
                        ErrorMessage="Enter Mobile" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Email:</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox11" Display="Dynamic" 
                        ErrorMessage="Enter Email" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="style3">
                    Authorities
                </td>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    User name:</td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox12" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox12" Display="Dynamic" 
                        ErrorMessage="Enter User Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password</td>
                <td class="style4" colspan="2">
                    <asp:TextBox ID="TextBox13" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="margin-left: 0px" Text="Generate Password" Width="170px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Zone:</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="ZONE" DataValueField="ZONE">
                        <asp:ListItem>Select a Zone</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" 
                        SelectCommand="SELECT &quot;ZONE&quot; FROM &quot;SCHEDULE_8&quot;">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Area:</td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList4" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="AREANAME" 
                        DataValueField="AREANAME">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" 
                        SelectCommand="SELECT &quot;AREANAME&quot; FROM &quot;SCHEDULE_8&quot; WHERE (&quot;ZONE&quot; = :ZONE)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList3" Name="ZONE" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="4">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="4">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        style="margin-left: 204px" Text="Confirm" Width="197px" />
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

