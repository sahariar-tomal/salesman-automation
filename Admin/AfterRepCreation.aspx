﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AfterRepCreation.aspx.cs" Inherits="RepDetailsPage" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 200px;
            height: 25px;
        }
        .style10
        {
            height: 25px;
        }
    .style3
    {
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
    .style5
    {
        width: 200px;
        height: 31px;
    }
    .style6
    {
        height: 31px;
    }
    .style4
    {
        width: 310px;
    }
        .style11
        {
            width: 199px;
        }
        .style12
        {
            width: 200px;
        }
    .style13
    {
        height: 30px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="1000" Visible="False"></asp:Label>
    <br />
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
                    Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Date of Birth:</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td class="style3">
                    Gender:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td class="style3">
                    National Id:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
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
                    <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Road no.</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Village
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Postal code.</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Thana</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    District</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mobile</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server" Height="26px" Width="309px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    Email:</td>
                <td class="style13">
                    <asp:TextBox ID="TextBox13" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 206px;">
            <tr>
                <td class="style12">
                    Authorities
                </td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    User name:</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox14" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Password</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox15" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" 
                        style="margin-left: 0px" Text="Regenerate Password" Width="170px" />
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Rank</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox16" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Salary</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox17" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Zone:</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox18" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Area:</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox19" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                    &nbsp;</td>
            </tr>
            </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style11">
                    Bonus Info</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    Target Amount</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox20" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Target Fillup Amount</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox21" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Bonus Amount</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox22" runat="server" Height="26px" ReadOnly="True" 
                        Width="309px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <br />
    <br />
</asp:Content>

